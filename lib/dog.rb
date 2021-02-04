class Dog
  # code goes here
  attr_reader :name, :species
  #attr_accessor :species
  def initialize(name, owner)
    @name = name
    @owner = owner
  end
end