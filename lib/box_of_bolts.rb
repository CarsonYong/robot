require_relative 'item'

class BoxOfBolts < Item
  attr_accessor :name

  def initialize
    @name = "box of bolts"
    @weight = 25
 end

 def feed(robot)
  robot.heal(20)
 end
end