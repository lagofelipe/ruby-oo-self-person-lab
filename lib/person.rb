class Person
   attr_accessor :bank_account, :happiness, :hygiene
    attr_reader :name


    def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end

    def happiness
#define a range for our hapiness
        #@happiness = num > 10 ? 10 : num
        [@happiness, 0, 10].sort[1]
        
    end

    def hygiene
        [@hygiene, 0, 10].sort[1]
    end

    def happy?
     @happiness > 7
     end

     def clean?
        @hygiene > 7
     end
     
     def get_paid(salary)
@bank_account += salary
"all about the benjamins"
     end

     def take_bath
self.hygiene = @hygiene += 4
'♪ Rub-a-dub just relaxing in the tub ♫'
     end

def work_out
self.happiness = @happiness += 2
self.hygiene = @hygiene -= 3

'♪ another one bites the dust ♫'
end
def call_friend(person)
self.happiness = self.happiness + 3
person.happiness = person.happiness + 3
"Hi #{person.name}! It's #{self.name}. How are you?"
#"Hi Penelope! It's Felix. How are you?"
end

def start_conversation(person, topic)
    if topic == 'politics'
        self.happiness = self.happiness - 2 
        person.happiness = person.happiness - 2
        'blah blah partisan blah lobbyist'
    elsif topic == 'weather'
        self.happiness = self.happiness + 1
        person.happiness = person.happiness + 1
    "blah blah sun blah rain"
    else 
        'blah blah blah blah blah'
    end

end

end