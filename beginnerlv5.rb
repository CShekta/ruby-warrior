class Player
  def play_turn(warrior)
    if warrior.feel.empty?
      if warrior.health < @health.to_i &&   warrior.health < 7
        warrior.walk!(:backward)
      elsif warrior.health < 20 && warrior.health >= @health.to_i
        warrior.rest!
      else
      warrior.walk!
      end
    elsif warrior.feel.captive?
      warrior.rescue!
    elsif warrior.feel.wall?
      warrior.walk!
    else
      warrior.attack!
    end
    @health = warrior.health.to_i
  end
end
