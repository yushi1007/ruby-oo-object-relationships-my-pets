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
end