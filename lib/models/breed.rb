class Breed
    attr_accessor :name, :bred_for, :life_span, :breed_group, :temperament

    @@all = []

    def initialize(breed_data)
        @bred_for = breed_data["bred_for"]
        @name = breed_data["name"]
        @life_span = breed_data["life_span"]
        @breed_group = breed_data["breed_group"]
        @temperament = breed_data["temperament"]
        @@all << self
    end

    def self.all
        @@all
    end


end