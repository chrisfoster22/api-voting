class Api::V1::VotersController < ApplicationController
  def create
  end

  def show
  end

  def update
  end

  private def voter_params
    params.require(:voter).permit(:name, :party)
  end
end
