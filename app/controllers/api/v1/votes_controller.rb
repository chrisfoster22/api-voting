class Api::V1::VotesController < ApplicationController
  before_filter :restrict_access
  def create
    vote = Vote.new(vote_params)
    if vote.save
      redirect_to api_v1_votes_path
    else
      render :new
    end
  end

  def index
    render json: { vote: Vote.all, candidate: Candidate.all }
  end

  private def vote_params
    params.require(:vote).permit(:candidate_id, :voter_id)
  end

  private def restrict_access
    authenticate_or_request_with_http_token do |token, options|
      ApiKey.exists?(access_token: token)
    end
  end

end
