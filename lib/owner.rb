class Owner
  @@all = []
  
  attr_accessor :pets, :name
  attr_reader :species
  
  def initialize(species)
    @species = species
    @pets = {}
  end
  
  def say_species
    @species
  end
end