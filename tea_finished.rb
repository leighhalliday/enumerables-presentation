class Tea
  attr_accessor :name, :cost, :caffiene, :steep

  def initialize(options)
    @name = options[:name]
    @cost = options[:cost]
    @caffiene = options[:caffiene]
    @steep = options[:steep]
  end

  def is_caffienated?
    caffiene > 0
  end
end

teas = []
teas << Tea.new(name: "Silver Needle", cost: 0.64, caffiene: 30, steep: 180)
teas << Tea.new(name: "Ceylon",        cost: 0.30, caffiene: 70, steep: 240)
teas << Tea.new(name: "Peppermint",    cost: 0.20, caffiene: 0,  steep: 300)
teas << Tea.new(name: "Sencha",        cost: 0.70, caffiene: 30, steep: 90)

# Count
puts "Count"
puts teas.count

# Any?
puts "Any?"
puts teas.any?{ |tea| tea.name == "Sencha" }
puts teas.any?{ |tea| tea.name == "Rooibos" }

# All?
puts "All?"
puts teas.all?(&:is_caffienated?)

# Select
puts "Select"
p teas.select(&:is_caffienated?)
p teas.select{ |tea| tea.cost >= 0.50 }

# Find
puts "Find"
p teas.find{ |tea| tea.name == "Sencha" }

# Min
puts "Min"
p teas.min{ |tea| tea.steep }

# Map
puts "Map"
p teas.map{ |tea| "#{tea.name} - #{tea.cost}" }