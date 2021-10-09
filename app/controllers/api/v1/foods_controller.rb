class Api::V1::FoodsController < ApplicationController
  
  def index
    if params[:coffee_id]
      @coffee = Coffee.find_by_id(params[:coffee_id])
      return render json: { status: 500 } if @coffee.nil?
      
      @foods = @coffee.matching_foods
    else
      @foods = Food.all
    end
    
    render json: { 
      status: 200, 
      foods: @foods,
    }
  end
  
  def show
    @food = Food.find_by_id(params[:id])
    
    return render json: { status: 500 } if @food.nil?
    
    @matching_coffees = @food.matching_coffees
    
    render json: { 
      status: 200, 
      food: @food,
      coffees: @matching_coffees,
    }
  end
end
