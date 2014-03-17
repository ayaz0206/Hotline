class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def show
    @question = Question.find_by_id(params[:id])
  end

  def new
    @question = Question.new
  end

  def create
    current_question = Question.create(title: params[:question][:title], description: params[:question][:description])
    @current_id = current_question.id
    redirect_to questions_show_path(@current_id)
  end

end

  