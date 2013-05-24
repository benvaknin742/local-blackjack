class CpuPlayer < Player 
 
 def hit?
  self.hand.bj_value < 17 
 end

  
end 
