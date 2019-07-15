class Dragon
    attr_reader :name
    attr_reader :rider
    attr_reader :color


    def initialize(name, color, rider)
        @name = name
        @color = color
        @rider = rider
        @cows_chomped = 0
    end

    def eat
        @cows_chomped += 1
    end

    def hungry?
        @cows_chomped < 3
    end

end
