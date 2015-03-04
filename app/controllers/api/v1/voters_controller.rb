class Api::V1::VotersController < ApplicationController
  before_filter :restrict_access
  def create
  end

  def show
  end

  def update
  end

  private def voter_params
    params.require(:voter).permit(:name, :party)
  end

  private def restrict_access
  authenticate_or_request_with_http_token do |token, options|
    ApiKey.exists?(paccess_token: token)
  end
end
