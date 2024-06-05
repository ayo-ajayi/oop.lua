local pet = require("pet")
local Pet = pet.Pet
local Dog = pet.Dog

local cat = Pet()
print(cat.name)

local dog = Dog("Sky", "Hungarian Hull")
print(dog.breed)
dog:feed()
print(dog.status)
