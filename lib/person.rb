#require 'pry'
class Person

  attr_reader :name
  attr_reader :happiness
  attr_reader :hygiene
  attr_accessor :bank_account

def initialize(name)
  @name = name
  @bank_account = 25
  @happiness = 8
  @hygiene = 8
end

def happiness=(points)
  @happiness = points
  @happiness = 10 if @happiness > 10
  @happiness = 0 if @happiness < 0
end

def hygiene=(points)
  @hygiene = points
  @hygiene = 10 if @hygiene > 10
  @hygiene = 0 if @hygiene < 0
end

def clean?
  @hygiene > 7 ? true:false
end

def happy?
  @happiness > 7 ? true:false
end

def get_paid(salary)
  @bank_account += salary

  "all about the benjamins"
end

def take_bath
  #binding.pry
  self.hygiene=(@hygiene + 4)

  "♪ Rub-a-dub just relaxing in the tub ♫"
end

def work_out
  self.happiness=(@happiness + 2)
  self.hygiene=(@hygiene - 3)

  "♪ another one bites the dust ♫"
end

def call_friend(person)
  self.happiness=(@happiness + 3)
  person.happiness=(person.happiness + 3)

  "Hi #{person.name}! It's #{self.name}. How are you?"
end

def start_conversation(person, topic)
  case topic
  when "politics"
    self.happiness=(@happiness - 2)
    person.happiness=(person.happiness - 2)
    "blah blah partisan blah lobbyist"
  when "weather"
    self.happiness=(@happiness + 1)
    person.happiness=(person.happiness + 1)
    "blah blah sun blah rain"
  else
    "blah blah blah blah blah"
  end
end
end
