class River

  attr_reader :name, :fish

  def initialize(name)
     @name = name
     @fish = []
  end

  def number_of_fish()
    return @fish.size()
  end

  def can_supply_fish(fish)
    @fish.push(fish)
  end

end
