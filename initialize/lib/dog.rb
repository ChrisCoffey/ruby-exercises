class Dog
  attr_reader :greeting

  def initialize(name, breed)
    @greeting = "Woof, I'm #{name} the #{breed}!"
  end
end
