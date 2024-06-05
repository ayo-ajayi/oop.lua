local function Pet(name)
    return {
        name = name or "Bull",
        status = "Hungry",
        feed = function(self)
            print(name .. " is fed...")
            self.status = "Full"
        end
    }
end

local function Dog(name, breed)
    local dog = Pet(name)
    dog.breed = breed
    dog.loyalty = 0
    dog.isLoyal = function(self)
        return self.loyalty >= 10
    end

    dog.bark = function()
        print("Woof Woof")
    end
    return dog
end

return { Pet = Pet, Dog = Dog }
