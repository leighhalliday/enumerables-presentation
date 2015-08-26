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

# Any?
puts "\nAny?"

# All?
puts "\nAll?"

# Select
puts "\nSelect"

# Find
puts "\nFind"

# Min By
puts "\nMin By"

# Map
puts "\nMap"