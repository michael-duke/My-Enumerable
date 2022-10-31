# class Car
#     attr_accessor :number_of_wheels, :seating_capacity, :maximum_velocity
  
#     def initialize(number_of_wheels, seating_capacity, maximum_velocity)
#       @number_of_wheels = number_of_wheels
#       @seating_capacity = seating_capacity
#       @maximum_velocity = maximum_velocity
#     end
#   end

#   class ElectricCar < Car
#   end

#   tesla_model_s = ElectricCar.new(4, 5, 250)
# print tesla_model_s.number_of_wheels # 4
# print tesla_model_s.seating_capacity # 5
# print tesla_model_s.maximum_velocity # 250
class Animal

    def initialize(name, number_of_legs = "4")
        @id = Random.rand(1..100),
        @name = name,
        @number_of_legs = number_of_legs
    end

    def Speak
        "Mehhhh Mehnnnn Mehhhnnnnn"
    end
end

animal_1 = Animal.new("Rex", 4)
animal_2 = Animal.new("Bob", 8)

# animal_3 = Animal.new
animal_4 = Animal.new("Rex")

p animal_1
p animal_1.Speak
p animal_2
p animal_4

module Skill
    def average_speed
        puts "My average speed is 20km/hr"
    end
end

class RunnerAthlete
    include Skill

    def initialize(name)
      @name = name
    end
end


  mohamed = RunnerAthlete.new("Mohamed Farah")
print mohamed.average_speed