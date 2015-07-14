require 'test_helper'

class SongPlaylistTest < ActiveSupport::TestCase
  def setup
    @song_playlist = song_playlists(:s_p1)
  end

  test "song_playlist belongs to song" do
  assert_respond_to @song_playlist, :song
  end

  test "song_playlist belongs to playlist" do
    assert_respond_to @song_playlist, :playlist
  end
end
