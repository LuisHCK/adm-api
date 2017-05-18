require 'rails_helper'

RSpec.describe "Cashes", type: :request do
  describe "GET /cashes" do
    it "works! (now write some real specs)" do
      get cashes_path
      expect(response).to have_http_status(200)
    end
  end
end
