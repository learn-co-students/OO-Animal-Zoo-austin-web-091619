class Zoo
attr_accessor :name, :location, :animals

@@all = []
def initialize(name, location)
    @name = name
    @location = location
    @@all << self
end

def self.all
    @@all
end

def animals
    Animal.all.select { |animal| animal.zoo == self}
end

def animal_species
    a = animals.map{ |animal| animal.species }
    a.uniq
end

def find_by_species(species)
    foundspecies = []
    animals.select do |ani|
     if ani.species == species 
        foundspecies << ani.nickname
     end
    end
    foundspecies
end

def animal_nicknames
    animals.map { |ani| ani.nickname}
end

def self.find_by_location(location)
    Zoo.all.select { |z| z.location == location }
end



end
