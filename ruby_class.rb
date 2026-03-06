class Vehicle
    @@number_of_objets = 0 # class variable

    # Methods 
    def self.show_number_of_objets # class method
      puts "You create #{@@number_of_objets} vehicles"
    end

    def initialize(year, color, model) 
      # States
      @@number_of_objets +=1

      @current_speed = 0
      puts "-----------Specification-------------"
      @year = year
      puts "The year is: #{year}"
      @color = color
      puts "The color is: #{color}"
      @model = model
      puts "The model is: #{model}"
      puts "-----------Actions-------------"
    end

    def speed_up(number) # add speed to @current_speed variable
        @current_speed += number
        puts "The car is moving at #{number} mph"
    end
    
    def brake(number) # slow down the cars and then stops
        @current_speed += number
        puts "The car slowdows to #{number} mph"
    end

    def current_speed
      puts "Yor current speed is #{@current_speed} mph"
    end

    def shut_off
        @current_speed = 0
        puts "The car is off"
    end

    def spray_paint(new_color)
        self.color = new_color
        puts "Your car new color is #{new_color}"
    end

    def self.gas_mileage(gallons, miles) # class method
      performance = miles / gallons 
      puts "Your car performance #{performance} per gallon of gas"

    end
end

class MyCar < Vehicle
    NUMBER_O_DOORS = 4

    attr_accessor :color # This allows to change and view the color
    attr_reader :year # this allows to only view the year
end
    

class MyTruck < Vehicle
    NUMBER_O_DOORS = 2
      
end    




mazda = MyCar.new("1995","Red", "Sport")
peyo = MyTruck.new("1995","Red", "Sport")

# mazda.color = "Black" # Set new color with accesor
# puts "New Color: #{mazda.color}"
# puts "Year: #{mazda.year}"
# mazda.speed_up(20)
# mazda.current_speed
# mazda.speed_up(20)
# mazda.current_speed
# mazda.brake(20)
# mazda.current_speed
# mazda.brake(20)
# mazda.current_speed
# mazda.shut_off
# mazda.current_speed
# mazda.spray_paint("Blue")

puts MyCar.gas_mileage(13, 351)

Vehicle.show_number_of_objets
