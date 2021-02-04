require 'pry'
require_relative 'dog'
require_relative 'cat'

class Owner


  # code goes here
  @@all = []
  attr_reader :name, :species
  #attr_accessor :species

  def initialize(name, species="human")
    @species = species
    @name = name
    @@all << self
  end 

  def say_species
    return "I am a human."
  end

  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all = []
  end

  def cats
    Cat.all.select{|cat| cat.owner == self}
  end

  def dogs
    Dog.all.select{|dog| dog.owner == self}
  end


  def buy_cat(name)
      Cat.new(name, self)

  end


  def buy_dog(name)
    Dog.new(name, self)
 end


def walk_dogs
  Dog.all.select{|dog| dog.mood = "happy"}
end

def feed_cats
  Cat.all.select{|cat| cat.mood = "happy"}
end


def sell_pets
  Dog.all.select{|dog| dog.mood = "nervous"}
  Cat.all.select{|cat| cat.mood = "nervous"}
  Dog.all.select{|dog| dog.owner = nil}
  Cat.all.select{|cat| cat.owner = nil}
end


def list_pets
  return "I have #{@owner.dogs.count}  dog(s), and #{@owner.cats.count}  cat(s)."
end





end

#binding.pry
0