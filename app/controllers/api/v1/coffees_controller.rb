class Api::V1::CoffeesController < ApplicationController
    
  def index
    @coffees = Coffee.all
    
    if params[:continent_id]
      @coffees = Continent.find(params[:continent_id]).coffees
    elsif params[:food_id]
      @coffees = Food.find(params[:food_id]).matching_coffees
    end
    
    render json: { 
      status: 200, 
      coffees: @coffees
    }
  end
  
  def show
    @coffee = Coffee.find(params[:id])
    @matching_foods = @coffee.matching_foods
    
    render json: { 
      status: 200, 
      coffee: @coffee,
      foods: @matching_foods,
    }
  end
  
end
