require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here


# binding.pry
# puts "done"


austin = Zoo.new("austin zoo", "austin tx")
sf = Zoo.new("sf zoo", "san fransisco")
nola = Zoo.new("new orleans zoo", "new orleans")
nolatwo = Zoo.new("nola 2", "new orleans")

zebra = Animal.new("mammal", 500, "zebra", austin)
otter = Animal.new("mammal", 45, "otter", austin)
snake = Animal.new("reptile", 13, "snake", austin)
rabbit = Animal.new("mammal", 5, "rabbit", nola)


# puts austin.location
# puts Animal.find_by_species("mammal")
# puts zebra.zoo
# puts austin.animals
# puts austin.animal_species
# puts austin.find_by_species("mammal")
# puts austin.animal_nicknames

# p Zoo.find_by_location("new orleans")