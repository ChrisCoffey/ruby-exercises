class Lion
  attr_reader :name
  attr_reader :sound

  def initialize(values)
    @name = values[:name]
    @sound = values[:sound]
  end
end
