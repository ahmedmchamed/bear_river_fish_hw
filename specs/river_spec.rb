require('minitest/autorun')
require('minitest/reporters')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../river')
require_relative('../fish')

class RiverTest < MiniTest::Test

  def setup()
    
    @river = River.new("Rhone")
    @fish1 = Fish.new("Fishface")
    @fish2 = Fish.new("McFishFace")
    @fish3 = Fish.new("FishyMcFishFace")

  end

  def test_can_create_river_class()
    assert_equal(River, @river.class())
  end

  def test_can_get_river_name()
    assert_equal("Rhone", @river.name())
  end

  def test_can_get_number_of_fish()
    assert_equal(0, @river.number_of_fish())
  end

  def test_can_supply_fish()
    @river.can_supply_fish(@fish1)
    @river.can_supply_fish(@fish2)
    @river.can_supply_fish(@fish3)
    assert_equal(3, @river.number_of_fish())
  end

end
