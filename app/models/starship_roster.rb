class StarshipRoster < ApplicationRecord
  belongs_to :starship
  belongs_to :personnel
end
