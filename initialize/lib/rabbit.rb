class Rabbit
  attr_reader :name
  def initialize(values)
    @name = values[:name] + (values[:num_syllables] == 2 ? " Rabbit" : "")
  end
end
