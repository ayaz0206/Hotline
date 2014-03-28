class QuestionsController < ApplicationController
  def index
    if params[:tag]
      @questions = Question.tagged_with(params[:tag])
    else
      @questions = Question.all
    end
      @questions = @questions.paginate(:page => params[:page], :per_page => 15).order('id DESC')
  end

  def show
    @question = Question.find_by_id(params[:id])
    @responses = Response.where("question_id = '#{params[:id]}'").order(correct: :desc)
    @response = Response.new
  end

  def new
    if current_user
      @question = Question.new
    else 
      redirect_to root_path
    end
  end


    def edit
    if current_user
      @question = Question.find(params[:id])
    else 
      redirect_to root_path
    end
  end

    def update
      @question = Question.find(params[:id])
      @question.title = params[:question][:title]
      @question.description = params[:question][:description]
      @question.save
      redirect_to question_path(@question)
    end

  def create
    tag_list = params[:question][:tag_list]
    @question = Question.new(question_params)
    @question.tag_list = tag_list
    @question.user = current_user
    if @question.save
      flash[:notice] = "Successfully Posted!"
      redirect_to question_path(@question)
    else
      flash[:errors] = @question.errors.full_messages
      render 'new'
    end
  end

  def search 
    if params[:search] == nil
      redirect_to :back
    else 
      redirect_to("/search/" + params[:search])
    end
  end

  def result 
    @results = Question.where(["title ILIKE ? OR description ILIKE ?", "%#{params[:search]}%", "%#{params[:search]}%"]);
    render 'search'
  end

  def tag_cloud
    tag_list = Question.tag_list_counts_on(:tags, :limit => 5, :order => "count desc")
  end
  
  private
  def question_params
    params.require(:question).permit(:hangout_link, :title, :description, :file_avatar)
  end



end

  