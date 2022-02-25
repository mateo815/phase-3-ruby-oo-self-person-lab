# your code goes here
class Person

    attr_reader :happiness, :hygiene, :name
    attr_accessor :bank_account
    

    def initialize (name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def name 
        @name
    end

    def happiness=(value)
        @happiness = value.clamp(0, 10)

    end

    def hygiene=(value)
        @hygiene = value.clamp(0, 10)
    end

    def happy?
        self.happiness > 7
    end

    def clean?
        self.hygiene > 7
    end

    def get_paid(amount)
        self.bank_account += amount
        "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
    end


end
