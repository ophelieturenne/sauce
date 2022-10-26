class QuizzsController < ApplicationController
  def index
    if params[:query].present?
      @quizzs = policy_scope(Quizz.where("name ILIKE ?", "%#{params[:query]}%"))
    else
      @quizzs = policy_scope(Quizz)
    end
  end

  def show
    @quizz = Quizz.find(params[:id])
    authorize @quizz
  end
end
