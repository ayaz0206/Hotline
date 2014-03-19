class ResponsesController < ApplicationController
  def create
    @response = Response.new(response_params)
    @response.question = Question.find(params[:question_id].to_i)
    if @response.save
      flash[:notice] = "Successfully Replied!"
      redirect_to question_path(@response.question)
    else
      flash[:errors] = @response.errors.full_messages
      redirect_to question_path(@response.question)
    end
  end
  
  private
  def response_params
    params.permit(:response) 
  end
end


