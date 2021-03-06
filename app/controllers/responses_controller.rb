class ResponsesController < ApplicationController
  def create
    @response = Response.new(response_params)
    @response.question = Question.find(params[:question_id].to_i)
    @response.user = current_user
    if params[:response][:response].include? "<script>"
      flash[:errors] = ["Sorry there was an error with your reply. Please try again!"]
      redirect_to question_path(@response.question)
    else    
      if @response.save
        flash[:notice] = "Successfully Replied!"
        redirect_to question_path(@response.question)
      else
        flash[:errors] = @response.errors.full_messages
        redirect_to question_path(@response.question)      
      end
    end
  end

  def mark_answer 
    new_correct_response = params[:response]
    current_question = params[:question_id]
    current_correct = Response.where(correct: true, question_id: current_question)
    if new_correct_response
      if current_correct.first
        current_correct.first.correct = false
        current_correct.first.save
      end
      @new_correct = Response.find(new_correct_response)
      @new_correct.correct = true
      @new_correct.save
      redirect_to question_path(current_question)
    else 
      redirect_to root_path
    end
  end
  
  private
  def response_params
    params.require(:response).permit(:response, :file_avatar, :hangout_link) 
  end
end


