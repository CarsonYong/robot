require_relative 'item'
require_relative 'box_of_bolts'
require_relative 'weapon'
class Robot

  attr_accessor :position, :items, :health, :attack, :equipped_weapon

  def initialize
    @position = [0,0]
    @items = []
    @capacity = 250
    @health = 100
    #@equipped_weapon = nil
    #@attack = 5
  end

  def move_left
    @position[0] -= 1
  end

  def move_right
    @position[0] += 1
  end  

  def move_up
    @position[1] += 1
  end

  def move_down
    @position[1] -= 1
  end 

  #def items
   # @items = []
  #end

  def pick_up(item)
    if(items_weight + item.weight) <= @capacity
      #@items << item # or self.items << item
      if item.class < Weapon
        @equipped_weapon = item
      end
      @items << item
    end
    #return false
    #@items2
  end

  def items_weight
    #@weight = 0
    @items.inject(0) {|sum, item| sum += item.weight }
    #goes through the items array and adds each element together plus the 
    #newly created item together to form sum.


  end

  #def health
   # @health = 100
  #end

  def wound(amount)
    @health -= amount
    if @health <= 0
      @health = 0
    end 
  end

  def heal(amount)
    @health += amount
    if @health >= 100
      @health = 100
    end
  end

  def attack(enemy)
    if @equipped_weapon == nil
       enemy.wound(5)
     else
    @equipped_weapon.hit(enemy)
  end
    #.wound(@equipped_weapon.hit) 
  end

#def equipped_weapon
 # @equipped_weapon
#end
 # def equipped_weapon=(weapon)
  #  @equipped_weapon = weapon
  #end

end
