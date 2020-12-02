class Breed
    attr_accessor :name, :bred_for, :life_span, :breed_group, :temperament

    @@all = []

    def initialize(breed_data)
        self.bred_for = breed_data["bred_for"]
        self.name = breed_data["name"]
        self.life_span = breed_data["life_span"]
        self.breed_group = breed_data["breed_group"]
        self.temperament = breed_data["temperament"]
        @@all << self
    end

    def self.all
        @@all
    end


end