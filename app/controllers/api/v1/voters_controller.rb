class Api::V1::VotersController < ApplicationController
  before_filter :restrict_access
  def create
    voter = Voter.new(voter_params)
    if voter.save
      ApiKey.create(voter: voter)
      render json: voter.api_key.access_token
    end
  end

  def show
  end

  def update
  end

  private def voter_params
    params.require(:voter).permit(:name, :party)
  end


end
