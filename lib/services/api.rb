require 'excon'

class Api

    def self.url
        url = 'https://api.thedogapi.com/v1/breeds'
    end

    def self.load_data
        response = Excon.get(url, headers: {token: '7b103632-0ba7-4301-a04f-5bb8a64a37c6'})
        data = JSON.parse(response.body)
        data.each do |breed_data|
            Breed.new(breed_data)   
        end
    end
end




