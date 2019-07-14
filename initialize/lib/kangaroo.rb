class Kangaroo
  attr_reader :name
  attr_reader :children

  def initialize(name, children)
    @name = name
    @children = children
  end
end
