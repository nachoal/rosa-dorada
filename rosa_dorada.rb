class RosaDorada
  def initialize(items)
    @items = items
  end

  def update_quality()
    @items.each do |item|
      if item.name != "Queso Brie Añejado" and item.name != "Pases de Backstage"
        if item.quality > 0
          if item.name != "Sulfuras"
            item.quality = item.quality - 1
          end
        end
      else
        if item.quality < 50
          item.quality = item.quality + 1
          if item.name == "Pases de Backstage"
            if item.sell_in < 11
              if item.quality < 50
                item.quality = item.quality + 1
              end
            end
            if item.sell_in < 6
              if item.quality < 50
                item.quality = item.quality + 1
              end
            end
          end
        end
      end
      if item.name != "Sulfuras"
        item.sell_in = item.sell_in - 1
      end
      if item.sell_in < 0
        if item.name != "Queso Brie Añejado"
          if item.name != "Pases de Backstage"
            if item.quality > 0
              if item.name != "Sulfuras"
                item.quality = item.quality - 1
              end
            end
          else
            item.quality = item.quality - item.quality
          end
        else
          if item.quality < 50
            item.quality = item.quality + 1
          end
        end
      end
    end
  end
end

class Item
  def initialize(name, sell_in, quality)
    @name = name
    @sell_in = sell_in
    @quality = quality
  end

  def to_s()
    "#{@name}, #{@sell_in}, #{@quality}"
  end

  def name()
    @name
  end

  def name=(value)
    @name = value
  end

  def sell_in()
    @sell_in
  end

  def sell_in=(value)
    @sell_in = value
  end

  def quality()
    @quality
  end

  def quality=(value)
    @quality = value
  end
end
