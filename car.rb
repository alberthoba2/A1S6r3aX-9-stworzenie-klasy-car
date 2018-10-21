class Car
  attr_accessor :wheels, :color, :average_speed, :brand
  def initialize(wheels, color, average_speed, brand)
    @wheels = wheels
    @color = color
    @average_speed = average_speed
    @brand = brand
  end
  def green?
    if @color == "green"
      true
    else 
      false
    end
  end
  def is_faster_than?(given_speed)
    if given_speed.to_i < @average_speed.to_i
      true
    else
      false 
    end
  end
  def time_for_tour(tour)
    puts "#{tour.to_f / @average_speed.to_f}h"
  end
  def black!
    @color = "black"
  end
  def show
   puts "Samochod marki #{@brand}, ma #{@wheels} kół i jest koloru #{@color}. Jego średnia predkość to #{@average_speed}km"
  end
end
car1 = Car.new("4", "green", "70", "Porsche")
car2 = Car.new("4", "black", "200", "Lamborghini")
car3 = Car.new("1", "yellow", "1", "Warszawa")
cars = [car1, car2, car3]
cars.each {|car| puts car.show}
