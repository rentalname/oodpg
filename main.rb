require_relative 'lib/gear'
require_relative 'lib/wheel'

puts Gear.new(52, 11, Wheel.new(26, 1.5)).gear_inches
