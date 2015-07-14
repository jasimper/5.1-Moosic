require 'test_helper'

class AlbumTest < ActiveSupport::TestCase

  def setup
    @album = albums(:album1)
  end

  test "album has many songs" do
    assert_respond_to @album, :songs
  end

  test "album belongs to artist" do
    assert_respond_to @album, :artist
  end

  test "album belongs to genre" do
    assert_respond_to @album, :genre
  end

end
