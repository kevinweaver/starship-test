require 'rails_helper'

RSpec.describe "Personnels", type: :request do
  describe "GET /personnels" do
    it "works! (now write some real specs)" do
      get personnels_path
      expect(response).to have_http_status(200)
    end
  end
end
