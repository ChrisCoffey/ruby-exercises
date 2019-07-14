class Monkey
  attr_reader :name
  attr_reader :type
  attr_reader :favorite_food

  def initialize(values)
    @name = values[0]
    @type = values[1]
    @favorite_food = values[2]
  end

end
