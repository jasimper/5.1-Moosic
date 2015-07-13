class CreateSongPlaylists < ActiveRecord::Migration
  def change
    create_table :song_playlists do |t|

      t.timestamps null: false
    end
  end
end
