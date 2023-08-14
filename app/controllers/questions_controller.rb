class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @response = params[:question]
    case params[:question]
    when "I am going to work"
      @write = "Great!"
    when "aza"
      @write = "Silly question, get dressed and go to work!"
    else
      @write = "I don't care, get dressed and go to work!"
    end
    if @response[-1] == "?"
      then @write = "Silly question, get dressed and go to work!"
    end
  end
end
