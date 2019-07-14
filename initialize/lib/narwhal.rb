class Narwhal
  attr_reader :name
  attr_reader :weight

  def initialize(values)
    @name = values[:name]
    @cute = values[:cute]
    @weight = values[:weight]
  end

  def cute?
    @cute
  end
end
