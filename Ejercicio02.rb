# hola
class Car
  attr_accessor :model, :year
  def initialize(model, year)
    @model = model
    @year = year
  end
#
# def model
#  @model
# end
#
# def year
#   @year
# end
end
car = Car.new('Camaro', 2016)
puts "Mi auto favorito es un #{car.model} del año #{car.year}!"
