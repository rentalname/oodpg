class RevealingReferences
  attr_reader :wheels

  def initialize(data)
    @wheels = wheelify(data)
  end

  def diameters
    wheels.collect do |wheel|
      wheel.rim + (wheel.tire * 2)
    end
  end

  Wheel = Struct.new(:rim, :tire)

  def wheelfy(data)
    data.collect do |cell|
      Wheel.new(cell[0], cell[1])
    end
  end

  def ratio
    chainring / cog.to_f
  end

  def gear_inches
    ratio * (rim + (tire * 2))
  end
end
