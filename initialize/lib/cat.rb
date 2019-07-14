class Cat
  attr_reader :name
  attr_reader :sound

  def initialize(name)
    @name = name
    @sound = "meow"
  end
end
