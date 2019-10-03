require 'rails_helper'

describe ReportsService do
  let!(:starship) { build(:starship) }
  let!(:personnel1) { build(:personnel) }
  let!(:personnel2) { build(:personnel) }

  context 'given a set of overlapping personnel' do
    let!(:roster1) { build(:starship_roster, personnel: personnel1, starship: starship, start_date: Date.yesterday, end_date: Date.today) }
    let!(:roster2) { build(:starship_roster, personnel: personnel1, starship: starship, start_date: Date.yesterday, end_date: Date.today) }

    it 'returns the set' do
      expect(ReportsService.overlap_report).to equal true
    end
  end
end
