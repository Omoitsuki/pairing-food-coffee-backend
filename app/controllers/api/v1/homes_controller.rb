class Api::V1::HomesController < ApplicationController
  def top
    @continents = Continent.all
    @foods = Food.all
    
    render json: {
      status: 200,
      continents: @continents,
      foods: @foods,
    }
  end
end
