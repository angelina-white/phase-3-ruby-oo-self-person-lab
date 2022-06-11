# your code goes here
require 'pry'

class Person

    attr_reader :name, :happiness, :hygiene
    attr_writer :happiness, :hygiene
    attr_accessor :bank_account

    def initialize(name, bank_account=25, happiness=8, hygiene=8)
        @name=name
        @bank_account=bank_account
        @happiness=happiness
        @hygiene=hygiene
    end    

    def happiness=(value)
        if value < 11 && value >= 0
            @happiness = value
        else
            @happiness
        end
    end

    def happiness
        self.happiness
    end

    def hygiene=(value)
        if value < 11 && value >= 0
            @hygiene = value
        else
            @hygiene
        end
    end

    def hygiene
        @hygiene
    end

    def happy
        if @happiness > 7
            true
        else
            false
        end
    end

    def clean
        if @hygiene > 7
            true
        else
            false
        end
    end

    def get_paid=(value)
        @bank_account= @bank_account + value
        puts "all about the benjamins"
    end

    binding.pry
end