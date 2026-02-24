class MyCar

    def initialize(year, color, model) 
      # States
      @speed = 0
      puts "-----------Specification-------------"
      @year = year
      puts "The year is: #{year}"
      @color = color
      puts "The color is: #{color}"
      @model = model
      puts "The model is: #{model}"
      puts "-----------Actions-------------"
    end

    # Methods 
    def speed_up # add speed to @speed variable 
      puts "The car is moving"
    end
    
    def brake # slow down the cars and then stops
      puts "The car stops"
    end

    def shut_off
      puts "The car is off"
    end
end

mazda = MyCar.new("1995","Red", "Sport")
mazda.speed_up
mazda.brake
mazda.shut_off
