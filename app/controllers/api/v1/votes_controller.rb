class Api::V1::VotesController < ApplicationController
  def create
  end

  def index
    render json: Vote.all
  end
end
