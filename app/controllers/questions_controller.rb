class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @answer = params[:question]
    if @answer == 'I am going to work right now!'
      @coach = 'Great!'

    elsif @answer.end_with?('?')
      @coach = 'Silly question, get dressed and go to work!'
    else
      @coach = "I don't care, get dressed and go to work!"
    end
  end
end
