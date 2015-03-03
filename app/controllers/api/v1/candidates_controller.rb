class Api::V1::CandidatesController < ApplicationController
  def index
    render json: Candidate.all
  end

  def show
  end

  private def candidate_params
    params.require(:candidate).permit(:name, :party)
  end
end
