class Api::V1::VotesController < ApplicationController
  before_filter :restrict_access
  def create
    vote = Vote.new(vote_params)
    if vote.save
      render json: vote
    else
      render :new
    end
  end

  def index
    render json: { voter: Voter.all }
  end

  private def vote_params
    params.require(:vote).permit(:candidate_id, :voter_id)
  end

end
