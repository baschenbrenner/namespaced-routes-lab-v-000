class CreatePreferences < ActiveRecord::Migration
  def change
    create_table :preferences do |t|
      t.string :song_sort_order
      t.string :artist_sort_order
      t.boolean :new_songs
      t.boolean :new_artist

      t.timestamps null: false
    end
  end
end
