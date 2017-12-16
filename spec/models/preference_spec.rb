require 'rails_helper'

RSpec.describe Preference, type: :model do
  it "has the right fields" do
    p = Preference.new(artist_sort_order: "DESC", song_sort_order: "ASC", new_artist: false, new_songs: true)
    expect(p.artist_sort_order.class).to eq String
    expect(p.song_sort_order.class).to eq String
    expect(p.new_artist).to eq false
    expect(p.new_songs).to eq true
  end
end
