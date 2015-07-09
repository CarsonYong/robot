require_relative 'item'

class Weapon < Item
  attr_accessor :name, :weight, :damage
  def initialize(name, weight, damage)
    @name = "power_shock"
    @weight = 10
    @damage = 45
  end

  def hit(robot)
    robot.wound(@damage)

  end
end
