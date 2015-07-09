require_relative 'weapon'

class PlasmaCannon < Weapon
  attr_accessor :name, :weight, :damage

  def initialize
    @name = "Plasma Cannon"
    @weight = 200
    @damage = 55
  end
end