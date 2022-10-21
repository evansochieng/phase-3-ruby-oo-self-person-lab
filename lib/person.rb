# your code goes here
require "pry"

# Person class
class Person
    # macros 
    attr_accessor :bank_account, :happiness, :hygiene

    # initialize name and other variables
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    # Person#name method
    def name
        @name
    end

    # Person#bank_account
    def bank_account
        @bank_account
    end

    # Person#bank_account=(value)
    def bank_account=(value)
        @bank_account = value
    end

    # Person#happiness
    def happiness
        @happiness
    end

    # Person#happiness=(value)
    def happiness=(value)
        #maximum and minimum hapiness scores are 10 and 0 respectively
        # use case statement 
        case true
        when value > 10
            @happiness = 10
        when value < 0
            @happiness = 0
        else
            @happiness = value
        end
    end

    # Person#hygiene
    def hygiene
        @hygiene
    end

    # Person#hygiene=(value)
    def hygiene=(value)
        # minimum and maximum hygiene scores are 0 and 10
        # use case statement
        case true
        when value > 10
            @hygiene = 10
        when value < 0
            @hygiene = 0
        else
            @hygiene = value
        end
    end

    # Person#clean?
    def clean?
        self.hygiene > 7
    end

    # Person#happy?
    def happy?
        happiness > 7
    end

    # Person#get_paid(amount)
    def get_paid amount
        new_account_amount = @bank_account + amount
        self.bank_account = new_account_amount
        return "all about the benjamins"
    end

    # Person#take_bath
    def take_bath
        new_hygiene_score = @hygiene + 4
        self.hygiene = new_hygiene_score
        return("♪ Rub-a-dub just relaxing in the tub ♫")
    end

    # Person#work_out
    def work_out
        new_happiness_score = @happiness + 2 
        new_hygiene_score = @hygiene - 3

        self.happiness = new_happiness_score
        self.hygiene = new_hygiene_score
        "♪ another one bites the dust ♫"
    end

    # Person#call_friend(friend)
    def call_friend(friend)
        self_happiness_score = @happiness + 3
        friend_happiness_score = friend.happiness + 3

        # set the new values
        self.happiness = self_happiness_score
        friend.happiness = friend_happiness_score
        
        # return string with the names
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    # Person#start_conversation(friend, topic)
    def start_conversation(friend, topic)
        if topic.downcase == "politics"
            self_happiness_score = @happiness - 2
            friend_happiness_score = friend.happiness - 2

            # set the new values
            self.happiness = self_happiness_score
            friend.happiness = friend_happiness_score

            "blah blah partisan blah lobbyist"
        elsif topic.downcase == "weather"
            self_happiness_score = @happiness + 1
            friend_happiness_score = friend.happiness + 1

            # set the new values
            self.happiness = self_happiness_score
            friend.happiness = friend_happiness_score

            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end
end

# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!This made me sweat!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
