class Player

  DEFAULT_HP = 60
  DEFAULT_DAMAGE = 10

  attr_reader :name, :hit_points

  def initialize(name, hit_points = DEFAULT_HP)
    @name = name
    @hit_points = hit_points
  end

  def attack(player)
    player.reduce_HP
  end

  def reduce_HP
    @hit_points -= DEFAULT_DAMAGE
  end
end
