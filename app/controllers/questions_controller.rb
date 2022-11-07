class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @coach_answer = coach_answer_enhanced(params[:message])
  end

  def coach_answer(your_message)
    answer = 'I am going to work right now!'
    if answer == your_message || your_message == answer.upcase
      ''
    elsif your_message.include? '?'
      'Silly question, get dressed and go to work!'
    else
      "I don't care, get dressed and go to work!"
    end
  end

  def coach_answer_enhanced(your_message)
    answer = 'I am going to work right now!'
    if your_message == answer.upcase
      ''
    elsif your_message == your_message.upcase
      "I can feel your motivation! #{coach_answer(your_message)}"
    else
      coach_answer(your_message)
    end
  end

end
