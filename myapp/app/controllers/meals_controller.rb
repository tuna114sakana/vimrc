class MealsController < ApplicationController
  def index
    @meals = Meal.all
  end

  def new
    @meal = Meal.new
  end

  def create
    @meal = Meal.new(meal_params)
    @meal.save
    redirect_to meals_path
  end

  def show
    @meal = Meal.find(params[:id])
  end


  private 
    def meal_params
      params.require(:meal).permit(:name, :content, :image)
    end
end