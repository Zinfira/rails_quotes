class LandingsController < ApplicationController 

  def index
    render :index
  end

  def create 
    HTTParty.post('http://localhost:3050/create', {email: params[:email], password: params[:password], password_confirmation: params[:password_confirmation]})
    response = HTTParty.post('http://localhost:3050/authenticate', {email: params[:email], password: params[:password]})
    @token = response.parsed_response
    render :new_token
  end
end