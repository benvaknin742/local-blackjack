require 'card'
require 'pile'
require 'deck'
require 'hand'
require 'player'
require 'cpu_player'

foo = Deck.new

player_1 = Player.new(100)
player_cpu = CpuPlayer.new(100)

while true 

  player_1.hand = Hand.new(2, foo)
  player_cpu.hand = Hand.new(2, foo)
# raise  player_1.hand.class.inspect   
 
  while player_1.hit?
    player_1.hand << foo.pop 
  end 
  
  while player_cpu.hit?
    player_cpu.hand << foo.pop
  end  

  
  
   def to_i
    return self.value.to_i unless self.value.to_i == 0
    x = case self.value
      when "A" then 14
      when "K" then 13
      when "Q" then 12
      when "J" then 11 
    end 
    return x
  end   
  
  if player_1.hand.is_bust?
    p "try again" 
    player_1.chip - 5
    player_cpu.chip + 5
  elsif player_cpu.hand.is_bust? 
    p "you win" 
    player_1.chip + 5
    player_cpu.chip - 5
  elsif player_1.hand.bj_value > player_cpu.hand.bj_value
    p "congratz"
    player_1.chip + 5
    player_cpu.chip - 5
  else
    p "get better" 
    player_1.chip - 5
    player_cpu.chip + 5
  end 
  
  p "play again? y/n"
  break if gets.chomp == "n"
  
end