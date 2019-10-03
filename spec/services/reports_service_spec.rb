require 'rails_helper'

describe ReportsService do
  let!(:starship) { build(:starship) }
  let!(:personnel1) { build(:personnel) }
  let!(:personnel2) { build(:personnel) }

  context 'given a set of overlapping personnel' do
    let!(:roster1) { build(:roster, personnel: personnel1, starship: startship) }
    let!(:roster2) { build(:roster, personnel: personnel1, starship: startship) }

    it 'returns the set' do
      byebug

    end
  end
end
