class GildedRose

  def normal_tick
    @item = Normal.new(quality, days_remaining)
    item.tick
  end

  def brie_tick
    @item = Brie.new(quality, days_remaining)
    item.tick
  end

  def sulfuras_tick
    @item = Sulfuras.new(quality, days_remaining)
    item.tick
  end

  def backstage_tick
    @item = Backstage.new(quality, days_remaining)
    item.tick
  end

  def quality
    return item.quality if item
    @quality
  end

  def days_remaining
    return item.days_remaining if item
    @days_remaining
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

  class Brie
    attr_reader :quality, :days_remaining

    def initialize(quality, days_remaining)
      @quality, @days_remaining = quality, days_remaining
    end

    def tick
      @days_remaining -= 1
      return if @quality >= 50

      @quality += 1
      @quality += 1 if @days_remaining <= 0
    end
  end

  class Sulfuras
    attr_reader :quality, :days_remaining

    def initialize(quality, days_remaining)
      @quality, @days_remaining = quality, days_remaining
    end

    def tick
    end
  end

  class Backstage
    attr_reader :quality, :days_remaining

    def initialize(quality, days_remaining)
      @quality, @days_remaining = quality, days_remaining
    end

    def tick
      @days_remaining -= 1
      return              if @quality >= 50
      return @quality = 0 if @days_remaining < 0

      @quality += 1
      @quality += 1 if @days_remaining < 10
      @quality += 1 if @days_remaining < 5
    end
  end

end
