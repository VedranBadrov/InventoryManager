class ManagersController < ApplicationController
  def index
  end
  
  def beers
    beers = HTTParty.get("https://api.punkapi.com/v2/beers")
    @beers = JSON.parse(beers.body)
  end
  
  def fruits
    fruits = HTTParty.get("https://www.fruityvice.com/api/fruit/all")
    @fruits = JSON.parse(fruits.body)
  end
end
