class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def show
    @question = Question.find_by_id(params[:id])
    @responses = Response.where("question_id = '#{params[:id]}'")
  end

  def new
    if current_user
      @question = Question.new
    else 
      redirect_to root_path
    end
  end


    def edit
      # any user can edit these questions
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
    @question = Question.new(question_params)
    @question.user = current_user
    if @question.save
      flash[:notice] = "Successfully Posted!"
      redirect_to question_path(@question)
    else
      flash[:errors] = @question.errors.full_messages
      render 'new'
    end
  end

  
  private
  def question_params
    params.require(:question).permit(:title, :description, :file_avatar)
  end

end

  