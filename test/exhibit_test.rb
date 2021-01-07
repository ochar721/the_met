require 'minitest/autorun'
require 'minitest/pride'
require './lib/exhibit'


class ExhibitTest < Minitest::Test
  def setup
    @exhibit = Exhibit.new({name: "Gems and Minerals", cost: 0})
  end
end
