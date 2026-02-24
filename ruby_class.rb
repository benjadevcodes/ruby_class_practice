class MyCar
    @velocity = 0
    def initialize(year, color, model) 
      # States
      @year = year
      puts "The year is: #{year}"
      @color = color
      puts "The color is: #{color}"
      @model = model
      puts "The model is: #{model}"
    end

    # Methods 
    def speed_up
      
    end

    def brake
      puts "The car stops"
    end

    def shut_off
      puts "The car is off"
    end
end

mazda = MyCar.new("1995","Red", "Sport")
