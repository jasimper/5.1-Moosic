require 'test_helper'

class SongTest < ActiveSupport::TestCase
  def setup
    @song = songs(:song1)
  end

  test "song has many playlists" do
    assert_respond_to @song, :playlists
  end

  test "song belongs to artist" do
    assert_respond_to @song, :artist
  end

end
