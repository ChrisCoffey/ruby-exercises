class Centaur
  attr_reader :name
  attr_reader :breed

  NO = "NO!"

  def initialize(name, breed)
    @name = name
    @breed = breed
    @action_count = 0
    @position = :standing
  end

  def run
    positional_try :run do
      res = cranky? ? NO : "Clop clop clop clop!!!"
      @action_count+=1
      res
    end
  end

  def shoot
    positional_try :shoot do
      res = cranky? ? NO : "Twang!!!"
      @action_count+=1
      res
    end
  end

  def sleep
    positional_try :sleep do
      @action_count = 0
    end
  end

  def lay_down
    positional_try :lay_down do
      @position = :laying
    end
  end

  def stand_up
    positional_try :stand_up do
      @position = :standing
    end
  end

  def cranky?
    @action_count >= 3
  end

  def standing?
    @position == :standing
  end

  def laying?
    @position == :laying
  end

private
  def positional_try (action)
    standing_actions = [:run, :shoot, :lay_down]
    laying_actions = [:stand_up, :sleep]
    if (standing_actions.include? action) &&
       (@position == :standing)
      yield
    elsif (laying_actions.include? action) &&
          (@position == :laying)
     yield
    else
      return NO
    end
  end

end
