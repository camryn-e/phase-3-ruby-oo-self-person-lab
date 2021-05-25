# your code goes here
class Person
    attr_reader :name
    attr_accessor :bank_account
    attr_reader :happiness
    attr_reader :hygiene


    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8

    end

    def happiness= (happiness)
        if happiness > 10
            @happiness = 10
        elsif happiness < 0
            @happiness = 0
        else
            @happiness = happiness
        end
    end

    def hygiene= (hygiene)
        if hygiene > 10
            @hygiene = 10
        elsif hygiene < 0
            @hygiene = 0
        else
            @hygiene = hygiene
        end
    end

    def happy?
        self.happiness > 7
    end

    def clean?
        self.hygiene > 7
    end

    def get_paid(salary)
        @bank_account += salary
        'all about the benjamins'
    end

    def take_bath
        bath_hygiene = @hygiene + 4
        self.hygiene=(bath_hygiene)
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness=(@happiness + 2)
        self.hygiene=(@hygiene - 3)
        "♪ another one bites the dust ♫"
    end

    def call_friend(fren)
        self.happiness=(@happiness + 3)
        fren.happiness=(fren.happiness + 3)
        "Hi #{fren.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(fren, topic)
        case topic
        when "politics"
            self.happiness=(@happiness - 2)
            fren.happiness=(fren.happiness - 2)
            "blah blah partisan blah lobbyist"
        when "weather"
            self.happiness=(@happiness + 1)
            fren.happiness=(fren.happiness + 1)
            "blah blah sun blah rain"

        else
            "blah blah blah blah blah"
        end
    end



end