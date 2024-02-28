class GildedRose

  def normal_tick
    @item = Normal.new(quality, days_remaining)
    item.tick
  end

  class Normal
    attr_reader :quality, :days_remaining

    def initialize(quality, days_remaining)
      @quality, @days_remaining = quality, days_remaining
    end

    def tick
      @days_remaining -= 1
      return if @quality == 0

      @quality -= 1
      @quality -= 1 if @days_remaining <= 0
    end
  end
