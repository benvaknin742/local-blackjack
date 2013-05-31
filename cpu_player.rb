class CpuPlayer < Player 
 
 CPU_HIT_ON = 17
 def hit?
  self.hand.bj_value < CPU_HIT_ON
 end

  
end 
