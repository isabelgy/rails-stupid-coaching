class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @category = params[:user_question]
    # params contains a key and a value

    if @category == "i am going to work right now!"
      @answer = ""
    elsif @category.ends_with?("?")
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end

end
