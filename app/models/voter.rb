class Voter < ActiveRecord::Base
  has_one :vote
  has_one :api_key

  def as_json(options={})
    { name: name,
      party: party,
      }
  end
end
