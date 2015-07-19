class ChangeSongPlaylistIdName < ActiveRecord::Migration
  def change
    rename_column :song_playlists, :playlists_id, :playlist_id
  end
end
