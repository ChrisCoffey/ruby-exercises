class Hobbit
    attr_reader :name
    attr_reader :disposition
    attr_reader :age

    def initialize(*values)
        @name = values[0]
        @disposition = "homebody"

        if values.length == 2
            @disposition = values[1]
        end
        @age = 0
    end

    def celebrate_birthday
        @age += 1
    end

    def adult?
        @age >= 33
    end

    def old?
        @age >= 101
    end

    def is_short?
        true
    end

    def has_ring?
        @name == "Frodo"
    end
end
