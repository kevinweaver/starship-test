class Personnel < ApplicationRecord
  has_many :ranks
  has_many :occupations
  has_many :personnel_statuses
  has_many :captains_logs
  has_many :starship_rosters
  has_many :starships, through: :starship_rosters
  has_one :user

  def current_rank
    self.ranks.where(end_date: nil).order(start_date: :desc).first
  end
end
