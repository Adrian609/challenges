Rails.application.routes.draw do
  resources :houses, only:[:index, :new, :create, :show, :edit, :update, :destroy]
  resources :members, only:[:index]

  root 'houses#index'
end


# def create
#   @question = Question.find(params[:question_id])
#   @answer = Answer.new(answer_params)
#   @answer.question = @question
#
  # if @answer.save
  #   flash[:notice] = "Answer saved successfully"
  #   redirect_to question_path(@question)
  # else
  #   flash[:alert] = "Failed to save answer"
  #   render :new
  # end
# end
