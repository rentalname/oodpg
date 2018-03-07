class Wheel
  attr_reader :rim, :tire

  def initialize(rim, tire, chainring, cog)
    @rim = rim
    @tire = tire
    @gear = Gear.new(chainring, cog)
  end

  def diameter
    rim + (tire * 2)
  end

  def circumference
    diameter * Math::PI
  end

  def gear_inches
    gear.gear_inches(diameter)
  end
end
