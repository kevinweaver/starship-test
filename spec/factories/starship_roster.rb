FactoryBot.define do
  factory :starship_roster do
    starship_id { 4 }
    personnel_id { 4 }
    start_date { Time.now }
  end
end
