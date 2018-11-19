class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @ask = params[:question]
    @answer = coach_answer_enhanced(@ask)
  end
  # TODO: return coach answer to your_message

  def coach_answer(your_message)
    if your_message.match?('\?')
      return "Silly question, get dressed and go to work!"
    elsif your_message == "I am going to work right now!"
      return "great"
    else
      return "I don't care, get dressed and go to work!"
    end
  end

  def coach_answer_enhanced(your_message)
    if your_message.upcase == your_message
      if your_message.match?('\?')
        return "I can feel your motivation! Silly question, get dressed and go to work!"
      elsif your_message == "I AM GOING TO WORK RIGHT NOW!"
        return "GOOD I AM FEELING YOUR MOTIVATION"
      else
        return "I can feel your motivation! I don't care, get dressed and go to work!"
      end
    else coach_answer(your_message)
    end
  end

end
