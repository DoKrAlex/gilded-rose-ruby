class GildedRose

  def self.for(name, quality, days_remaining)
    @item = klass_for(name).new(quality, days_remaining)
  end

  def self.klass_for(name)
    case name
    when 'normal'
      Normal
    when 'Aged Brie'
      Brie
    when 'Sulfuras, Hand of Ragnaros'
      Item
    when 'Backstage passes to a TAFKAL80ETC concert'
      Backstage
    end
  end

  class Item
    def tick
    end
  end

end
