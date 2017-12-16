require 'rails_helper'

RSpec.describe ArtistsController do

  describe "GET new" do
    it "redirects when access is turned off" do
      p = Preference.create(new_artist: false)
      get :new
      expect(response).to redirect_to artists_path
    end
  end

end
