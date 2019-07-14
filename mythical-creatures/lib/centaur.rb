class Centaur
  attr_reader :name
  attr_reader :breed

  @cranky = false
  @position = :standing
  def initialize(name, breed)

  end

  def run
    positional_try :shoot do
      @cranky ? "NO!!!" : "Clop clop clop clop!!!"
    end
  end

  def shoot
    positional_try :shoot do
      @cranky ? "NO!!!" : "Twang!!!"
    end
  end

  def sleep
    positional_try :sleep do
      @cranky = false
    end
  end

  def lay_down
    positional_try :lay_down do
      @position = :laying
    end
  end

  def cranky?
    @cranky
  end


private
  def positional_try (action)
    standing_actions = [:run, :shoot, :lay_down]

    if (standing_actions.include? action) &&
       (@position == :standing)
      yield
    else if (@position == :laying)
      yield
    else
      return "No!!!"
    end
  end
end
