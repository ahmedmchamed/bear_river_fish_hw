require('pry')
require('minitest/autorun')
require('minitest/reporters')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../bear')
require_relative('../fish')
require_relative('../river')

class BearTest < MiniTest::Test

  def setup()
    
    @bear = Bear.new("BigFluffyBear", :grizzly)

    @fish1 = Fish.new("FishyHere")
    @fish2 = Fish.new("FishyThere")
    @fish3 = Fish.new("FishyEverywhere")

    @river_fish = River.new("AllTheFish")

  end

  def test_can_create_bear_class()
    assert_equal(Bear, @bear.class())
  end

  def test_can_get_bear_name()
    assert_equal("BigFluffyBear", @bear.name())
  end

  def test_can_get_bear_type()
    assert_equal(:grizzly, @bear.bear_type())
  end

  def test_number_of_fish_in_tummy()
    assert_equal(0, @bear.number_of_fish_in_tummy())
  end

  def test_can_add_fish_to_river()
    @river_fish.can_supply_fish(@fish1)
    assert_equal(1, @river_fish.number_of_fish())
  end

  def test_bear_can_get_fish_from_river()
    @river_fish.can_supply_fish(@fish1)
    @river_fish.can_supply_fish(@fish2)
    @river_fish.can_supply_fish(@fish3)
    @bear.can_remove_fish_from_river(@river_fish)
    assert_equal(3, @bear.number_of_fish_in_tummy()) 
  end

  def test_river_has_no_fish()
    assert_equal(false, @bear.can_remove_fish_from_river(@river_fish))
  end

end
