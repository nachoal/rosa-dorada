require File.join(File.dirname(__FILE__), ARGV[1] || 'rosa_dorada')

items = [
  Item.new(name="Chaleco de Invisibilidad", sell_in=10, quality=20),
  Item.new(name="Queso Brie Añejado", sell_in=2, quality=0),
  Item.new(name="Elixir of the Mongoose", sell_in=5, quality=7),
  Item.new(name="Sulfuras", sell_in=0, quality=80),
  Item.new(name="Sulfuras", sell_in=-1, quality=80),
  Item.new(name="Pases de Backstage", sell_in=15, quality=20),
  Item.new(name="Pases de Backstage", sell_in=10, quality=49),
  Item.new(name="Pases de Backstage", sell_in=5, quality=49),
  # This Pastel de Mana Embrujado does not work properly yet
  #Item.new(name="Pastel de Mana Embrujado", sell_in=3, quality=6), # <-- :O
]

days = 2
if ARGV.size > 0
  days = ARGV[0].to_i + 1
end

rosa_dorada = RosaDorada.new items
(0...days).each do |day|
  puts "-------- day #{day} --------"
  puts "name, sellIn, quality"
  items.each do |item|
    puts item
  end
  puts ""
  rosa_dorada.update_quality
end
