class Jackalope
  attr_reader :name
  attr_reader :etymology

  def initialize(name)
    @name = name
    @etymology = ["Jackrabbit",
                  "Antelope"]
  end
end
