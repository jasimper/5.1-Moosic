require 'test_helper'

class PlaylistTest < ActiveSupport::TestCase
  def setup
    @playlist = playlists(:playlist1)
  end

  test "playlist has many songs" do
  assert_respond_to @playlist, :songs
  end
end
