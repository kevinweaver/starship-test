class Starship < ApplicationRecord
  has_many :starship_rosters
  has_many :personnel, through: :starship_rosters
  has_many :starship_statuses

  def current_captain
    self.personnel.all.each do |person|
      if person.current_rank.title == "Captain"
        return person
      end
    end
  end
end
