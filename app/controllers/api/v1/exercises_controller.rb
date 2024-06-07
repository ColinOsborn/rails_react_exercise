class Api::V1::ExercisesController < ApplicationController
  def index
    @exercises = Exercise.all.order(created_at: :desc)
    render json: @exercises
  end

  def create
    @exercise = Exercise.create(exercise_params)
    if @exercise.save?
      render json: @exercise
    else
      render json: { errors: @exercise.errors.full_messages }
    end
  end

  def show
  end

  def destroy
  end

  private

  def exercise_params
    params.require(:exercise).permit(:name, :trainings, :instruction, :image)
  end
end
