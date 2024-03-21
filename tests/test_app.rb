require 'minitest/autorun'
require './artwork'

class TestArtwork < Minitest::Test
  def setup
    @artwork = Artwork.new("Starry Night", "Vincent van Gogh", 1889)
  end

  def test_initialize
    assert_equal "Starry Night", @artwork.title
    assert_equal "Vincent van Gogh", @artwork.artist
    assert_equal 1889, @artwork.year
  end

  def test_attributes
    @artwork.title = "Mona Lisa"
    @artwork.artist = "Leonardo da Vinci"
    @artwork.year = 1503

    assert_equal "Mona Lisa", @artwork.title
    assert_equal "Leonardo da Vinci", @artwork.artist
    assert_equal 1503, @artwork.year
  end
end
