class HomeController < ApplicationController

  def index
    @questions = Question.all
    @single_question = Question.find(params[:id])
  end



end
