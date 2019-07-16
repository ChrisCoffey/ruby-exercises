class Person
  attr_reader :name
  attr_accessor :stoned

  def initialize(name)
    @name = name
    @stoned = false
  end

  def stoned?
    @stoned
  end
end

class Medusa
  attr_reader :name
  attr_reader :statues

  def initialize(name)
    @name = name
    @statues = []
  end

  def stare(person)
    if @statues.length == 3
      statue = @statues.shift
      statue.stoned = false
    end
    person.stoned = true
    @statues << person
  end
end
