class Parrot
  attr_reader :name
  attr_reader :known_words

  def initialize(values)
    @name = values[:name]
    @known_words = values[:known_words]
  end

  def sound
    "Squawk!"
  end
end
