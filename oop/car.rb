class Car

  def initialize(model, type, capacity)
    # @model = model
    # @type = type
    # @capacity = capacity
    @model, @type, @capacity = model, type, capacity
  end

  def self.max_speed
    200
  end

  def drive
    ignite_engine
    puts "Driving..."
  end

  def park
    puts "Parking..."
  end

  def stop
    puts "Stopping..."
  end

  private

  def ignite_engine
    puts "Igniting engine..."
  end

  def pump_gas
    puts "pumping gas..."
  end

end
