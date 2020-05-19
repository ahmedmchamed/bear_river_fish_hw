class Bear

  attr_reader :name, :bear_type

  def initialize(name, bear_type)
    @name = name
    @bear_type = bear_type
    @tummy = []
  end

  def number_of_fish_in_tummy()
    return @tummy.size()
  end

  def can_remove_fish_from_river(river)
    return false if river.number_of_fish() == 0

    for fish in river.fish()
      @tummy.push(fish)
    end
  end

end
