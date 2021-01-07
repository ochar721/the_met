require 'minitest/autorun'
require 'minitest/pride'
require './lib/exhibit'
require './lib/patron'
require './lib/museum'


class PatronTest < Minitest::Test
  def setup
    @dmns = Museum.new("Denver Museum of Nature and Science")
    @gems_and_minerals = Exhibit.new({name: "Gems and Minerals", cost: 0})
    @dead_sea_scrolls = Exhibit.new({name: "Dead Sea Scrolls", cost: 10})
    @imax = Exhibit.new({name: "IMAX",cost: 15})
    @patron_1 = Patron.new("Bob", 20)
    @patron_2 = Patron.new("Sally", 20)
  end

  def test_it_exitsts_and_has_attributes
    assert_instance_of Museum, @dmns
    assert_equal "Denver Museum of Nature and Science", @dmns.name
  end

  def test_it_starts_with_no_exhibits
    assert_equal [], @dmns.exhibits
  end

  def test_it_can_add_exhibits
    @dmns.add_exhibit(@gems_and_minerals)
    @dmns.add_exhibit(@dead_sea_scrolls)
    @dmns.add_exhibit(@imax)

    expected_1 = [@gems_and_minerals, @dead_sea_scrolls, @imax]
    assert_equal expected_1, @dmns.exhibits
  end

  def test_it_can_recommend_interests
    @patron_1.add_interest("Dead Sea Scrolls")
    @patron_1.add_interest("Gems and Minerals")
    @patron_2.add_interest("IMAX")

    expected_1 = [@dead_sea_scrolls, @gems_and_minerals]
    assert_equal expected_1, @dmns.recommend_exhibits(@patron_1)

    expected_2 = [@imax]
    assert_equal expected_2, @dmns.recommend_exhibits(@patron_2)
  end


end
