class Owner
  @@all = []
  
  attr_accessor :pets, :name
  attr_reader :species
  
  def initialize(species)
    @species = species
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end
  
  def self.all
    @@all
  end
  
  def say_species
    @species
  end
  
  def buy_fish(name)
    fish = Fish.new(name)
    pets[:fishes] << fish
  end
  
  def buy_cat(name)
    cat = Cat.new(name)
    pets[:cats] << cat
  end
  
  def buy_dog(name)
    dog = Dog.new(name)
    pets[:dogs] << dog
  end
  
  def walk_dogs
  pets[:dogs].map {|dog| dog.mood = "happy"}
  
  end
end