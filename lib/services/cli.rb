class Cli

    def start
        puts "Welcome to the dog house!"
        puts "Filling the kibble bowl, please wait..."
        Api.load_data

        main_menu_options
    end

    def main_menu_options
        puts "Type '1' to show Dog breeds"
        puts "Type 'exit' to exit the Dog show"

        main_menu
    end

    def main_menu
        input = get_input.downcase

        if input == "1"
            puts "Select breed of Dog for more information"
            list_breeds
            breed_details_menu
        elsif input == "exit"
            puts "leaving the Dog show"
            exit
        else
            invalid_choice
            main_menu_options
        end
    end

    def invalid_choice
        puts "Invalid option, please try again"
    end

    def get_input
        print "Enter Choice: "
        gets.chomp
    end

    def list_breeds
        Breed.all.each.with_index(1) do |breed, index|
            puts "#{index}. #{breed.name}"
        end
        breed_details_menu_options
    end

    def breed_details_menu_options
        puts "Select the number next to the breed to get more detailed information"
        puts "Or type 'exit' to leave the Dog show"
        breed_details_menu
    end

    def print_breed_details(breed)
        puts " "
        puts "Name: #{breed.name}"
        puts "Bred for: #{breed.bred_for}"
        puts "Life Span: #{breed.life_span}"
        puts "Breed Group: #{breed.breed_group}"
        puts "Temperament: #{breed.temperament}"
        puts " "
    end

    def breed_details_menu
        input = get_input

        if input.to_i.between?(1, Breed.all.length)
            index = input.to_i - 1
            breed = Breed.all[index]
            print_breed_details(breed)
            main_menu_options
        elsif input == "exit"
            puts "Exiting the Dog show. Woof!"
            exit
        else 
            invalid_choice
            breed_details_menu_options
        end
    end

end