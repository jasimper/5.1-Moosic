require 'test_helper'

class GenreTest < ActiveSupport::TestCase
  def setup
    @genre = genres(:genre1)
  end

  test "genre has many albums" do
  assert_respond_to @genre, :albums
  end
end
