require 'minitest/autorun'
require 'minitest/pride'
require './lib/exhibit'
require './lib/patron'
reuire  './lib/museum'


class PatronTest < Minitest::Test
  def setup
    @dmns = Museum.new("Denver Museum of Nature and Science")
  end

  def test_it_exitsts_and_has_attributes
    assert_instance_of Museum, @dmns
    assert_equal "Denver Museum of Nature and Science", @dmns.name
  end
