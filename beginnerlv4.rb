class Player
  def play_turn(warrior)
    if warrior.feel.empty?
      if warrior.health < 20 && warrior.health >= @health.to_i
        warrior.rest!
      else
      warrior.walk!
      end
    else
      warrior.attack!
    end
    @health = warrior.health.to_i
  end
end
