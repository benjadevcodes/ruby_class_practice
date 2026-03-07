module Towable
  def can_tow?(pounds)
    pounds < 2000
  end
end

class Vehicle
    attr_accessor :color # This allows to change and view the color
    attr_reader :year # this allows to only view the year
    @@number_of_objects = 0 # class variable

    def initialize(year, color, model) 
      # States
      @@number_of_objects +=1

      @current_speed = 0
      puts "-----------Specification-------------"
      @year = year
      puts "The year is: #{@year}"
      @color = color
      puts "The color is: #{@color}"
      @model = model
      puts "The model is: #{@model}"
      puts "-----------Actions-------------"
    end

       # Methods 
    def self.show_number_of_objets # class method
      puts "You create #{@@number_of_objects} vehicles"
    end

    def self.gas_mileage(gallons, miles) # class method
      performance = miles / gallons 
      puts "Your car performance #{performance} per gallon of gas"

    end

    def speed_up(number) # add speed to @current_speed variable
        @current_speed += number
        puts "The car is moving at #{number} mph"
    end
    
    def brake(number) # slow down the cars and then stops
        @current_speed -= number
        puts "The car slow down to #{number} mph"
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

    def age
    puts "The vehicle is #{calculate} years old"
    end

    def calculate
      today_year = Time.now.year.to_i
      creation_year = @year.to_i
      result = today_year - creation_year
      return result
    end
  
    private :calculate
end

class MyCar < Vehicle
    NUMBER_OF_DOORS = 4  
end
    
class MyTruck < Vehicle
    NUMBER_OF_DOORS = 2
    include Towable 
end    

mazda = MyCar.new("1986","Red", "Sport")
scania = MyTruck.new("2001", "White", "Europe 1")

# mazda.color = "Black" # Set new color with accesor
# puts "New Color: #{mazda.color}"
# puts "Year: #{mazda.year}"
# mazda.speed_up(20)
# mazda.current_speed
# mazda.brake(20)
# mazda.shut_off
# mazda.spray_paint("Blue")

# MyCar.gas_mileage(13, 351)
# Vehicle.show_number_of_objets

# puts "Path"
# puts MyTruck.ancestors

# scania.color = "White"
# scania.speed_up(20)
# scania.current_speed
# scania.brake(20)
# scania.shut_off
# scania.spray_paint("Blue")
# MyTruck.gas_mileage(14, 355)

mazda.age
#mazda.calculate # verification of private privilege

scania.age
#scania.calculate # verification of private privilege
