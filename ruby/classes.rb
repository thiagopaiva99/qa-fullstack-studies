class Car
  attr_accessor :name

  def start
    puts 'The car is ready to go!'
  end
end

civic = Car.new
civic.name = 'Civic'

puts civic.start
puts civic.name
