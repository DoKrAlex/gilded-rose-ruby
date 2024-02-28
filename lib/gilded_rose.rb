class GildedRose

  DEFAULT_CLASS = Item
  SPECIALIZED_CLASSES = {
    'normal'                                    =>  Normal,
    'Aged Brie'                                 =>  Brie,
    'Backstage passes to a TAFKAL80ETC concert' =>  Backstage }

  def self.for(name, quality, days_remaining)
    (SPECIALIZED_CLASSES[name] || DEFAULT_CLASS).
      new(quality, days_remaining)
  end

end
