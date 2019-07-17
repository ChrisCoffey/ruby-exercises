class Human

    attr_accessor :encounter_counter, :conscious

    def initialize
        @encounter_counter = 0
    end

    def name
        "Jane"
    end

    def notices_ogre?
        (@encounter_counter % 3) == 0
    end

    def knocked_out?
        !conscious
    end
end

class Ogre

  attr_reader :name, :home, :encounter_counter, :swings

  def initialize(*args)
      @name = args[0]
      @home = args.length == 1 ? "Swamp" : args[1]
      @encounter_counter = 0
      @swings = 0
  end

  def encounter(human)
      @encounter_counter += 1
      human.encounter_counter += 1
      if human.notices_ogre?
          swing_at(human)
      end
  end

  def swing_at(human)
      @swings += 1
      if (@swings % 2) == 0
          human.conscious = false
      end
  end

  def apologize(human)
      human.conscious = true
  end

end
