class Tea
  attr_accessor :name, :cost, :caffeine, :steep

  def initialize(options)
    @name = options[:name]
    @cost = options[:cost]
    @caffeine = options[:caffeine]
    @steep = options[:steep]
  end

  def is_caffeinated?
    caffeine > 0
  end
end

teas = []
teas << Tea.new(name: "Silver Needle", cost: 0.64, caffeine: 30, steep: 180)
teas << Tea.new(name: "Ceylon",        cost: 0.30, caffeine: 70, steep: 240)
teas << Tea.new(name: "Peppermint",    cost: 0.20, caffeine: 0,  steep: 300)
teas << Tea.new(name: "Sencha",        cost: 0.70, caffeine: 30, steep: 90)

# Count
puts "\nCount"
puts teas.count

# Any?
puts "\nAny?"
puts teas.any?{ |tea| tea.cost >= 1.50 }

# All?
puts "\nAll?"
puts teas.all?{ |tea| tea.is_caffeinated? }
puts teas.all?(&:is_caffeinated?)

# Select
puts "\nSelect"
puts teas.select{ |tea| tea.steep <= 240 }.inspect

# Find
puts "\nFind"
puts teas.find{ |tea| tea.name == "Peppermint" }.inspect

# Min By
puts "\nMin By"
puts teas.min_by(&:cost).inspect

# Map
puts "\nMap"
puts teas.map{ |tea| "#{tea.name} - #{tea.cost}" }.inspect