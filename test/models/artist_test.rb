require 'test_helper'

class ArtistTest < ActiveSupport::TestCase
  def setup
    @artist = artists(:artist1)
  end

  test "artist has many songs" do
    assert_respond_to @artist, :songs
  end

  test "artist has many albums" do
    assert_respond_to @artist, :albums
  end
end
