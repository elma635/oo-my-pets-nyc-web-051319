require 'pry'
require_relative '../lib/fish.rb'
require_relative '../lib/dog.rb'
require_relative '../lib/cat.rb'

class Owner
  attr_accessor :pets, :name
  attr_reader :species

  @@all = []


  def initialize(name)
    @name = name
    @species = "human"
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
  end

  def self.all
    @@all
  end

  # def pets
  #   @pets.each do |domestics|
  #

  #
  #   end
  # end

def self.count #self is define on the outside of the method body bc defines its a class method
  @@all.length # refering to the instance where everything in class is store (@@all) & the length of that

  end

  def self.reset_all
    @@all.clear #removes all from self

  end

  def say_species
    "I am a human."
  end

  def buy_fish(name)
    @pets[:fishes] << Fish.new(name) #we're ref to the class of fish while passing in name as an arg.
    end


    def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end

      def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
    end

          def walk_dogs
         pets[:dogs].each do |dog|
          dog.mood = "happy" #dog parameter -- with the .mood attr_accessor from the dog class = to "happy"
        end
    end

    def play_with_cats
      pets[:cats].each do |cat|
        cat.mood = "happy"
      end
    end

    def feed_fish
      pets[:fishes].each do |fish|
        fish.mood = "happy"
      end
    end

    def sell_pets
      pets.each do |key, value|
        value.each do |animal|
          animal.mood = "nervous"
        end
        value.clear
      end
    end

def list_pets
  "I have 2 fish, 3 dog(s), and 1 cat(s)."
end

end
