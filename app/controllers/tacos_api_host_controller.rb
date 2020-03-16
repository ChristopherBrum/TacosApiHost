class TacosApiHostController < ApplicationController
  def index
      response = HTTParty.get('https://taco-api.herokuapp.com/tacos')
      render json: JSON.parse(response.body)
  end 
end
