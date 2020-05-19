require('minitest/autorun')
require('minitest/reporters')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../fish.rb')

class FishTest < MiniTest::Test

  def setup()

    @fish = Fish.new("Fishy")

  end

  def test_can_create_fish_class()
    assert_equal(Fish, @fish.class())
  end

  def test_can_get_fish_name()
    assert_equal("Fishy", @fish.name())
  end

end
