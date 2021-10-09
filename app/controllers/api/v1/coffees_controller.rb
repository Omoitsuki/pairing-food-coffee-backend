class Api::V1::CoffeesController < ApplicationController
    
  def index
    
    
    if params[:continent_id]
      @continent = Continent.find_by_id(params[:continent_id])
      return render json: { status: 500 } if @continent.nil?
      
      @coffees = @continent.coffees
    elsif params[:food_id]
      @food = Food.find_by_id(params[:food_id])
      return render json: { status: 500 } if @food.nil?
      
      @coffees = @food.matching_coffees
    else
      @coffees = Coffee.all
    end
    
    render json: { 
      status: 200, 
      coffees: @coffees
    }
  end
  
  def show
    @coffee = Coffee.find_by_id(params[:id])
    
    return render json: { status: 500 } if @coffee.nil?
    
    @matching_foods = @coffee.matching_foods
    
    render json: { 
      status: 200, 
      coffee: @coffee,
      foods: @matching_foods,
    }
  end
  
end
