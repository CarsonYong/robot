require_relative 'weapon'

class Laser < Weapon
  attr_accessor :name, :weight, :damage

  def initialize
    @name = "Laser"
    @weight = 125
    @damage = 25
  end
end