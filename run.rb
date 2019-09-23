require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here
# Zoo Class
# A zoo should be initialized with a name and a location, which should both be passed as strings.
chi = Zoo.new("chicago zoo", "Chicago")
dc = Zoo.new("National zoo", "DC")
sd = Zoo.new("San Diego Wonderland", "San Diego")
# Zoo#location should return the location of the zoo instance.
# Zoo#name should return the name of the zoo instance.
# Zoo.all should return an array of all the zoo instances.
Zoo.all

# Animal Class
# An animal should be instantiated with the species (e.g. "Cat", "Dog", "Rat"),
#  a numerical weight and a nickname. Keep in mind that the animal's species and nickname should
#  not be able to change, but its weight can.
tiger = Animal.new("tiger", 125, "Joe", chi)
rhino = Animal.new("rhino", 325, "Horny", chi)
emu = Animal.new("emu", 125, "Legs", chi)
tiger2 = Animal.new("tiger", 125, "Rhonda", chi)
# Animal#nickname should return the nickname of the animal.
# Animal#weight should return the weight of the animal.
# Animal#species should return the species of the animal.
# Animal.all should return an array of all the animal instances.
# Animal#zoo should return the zoo instance that the instance belongs to.
# Animal.find_by_species should take in an animal's species as an argument and return an array of all the animals, which are of that species.
Animal.find_by_species("tiger")
# Zoo#animals should return all the animals that a specific instance of a zoo has.
chi.animals
# Zoo#animal_species should return an array of all the species (as strings) of the animals in the zoo. However, if you have two dogs, it should only return one "Dog" string (aka an unique array).
chi.animal_species
# Zoo#find_by_species should take in an animal's species as an argument and return an array of all the animals in that zoo, which are of that species.
chi.find_by_species("tiger")
# Zoo#animal_nicknames should return an array of all the nicknames of animals that a specific instance of a zoo has.
chi.animal_nicknames
# Zoo.find_by_location should take in a location as an argument and return an array of all the zoos within that location.
Zoo.find_by_location("dc")
binding.pry
puts "done"
