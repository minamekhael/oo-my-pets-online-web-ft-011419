class Owner
  @@all = []
  
  attr_reader :species
  
  def initialize(species)
    @species = species
  end
  
  def say_species
    @species
  end
end