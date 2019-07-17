class Pirate
    attr_reader :name, :job, :booty

    def initialize(*args)
        @name = args[0]
        @job = args.length > 1 ? args[1] : "Scallywag"
        @bad_stuff_counter = 0
        @booty = 0
    end

    def cursed?
        @bad_stuff_counter >= 3
    end

    def commit_heinous_act
        @bad_stuff_counter += 1
    end

    def rob_ship
        @booty += 100
    end
end
