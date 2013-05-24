class Hand < Pile  
  
  def bj_value
    was = self.map {|card| card.bj_value}
    sum = was.inject  { |total, a| total+=a }
    if sum > 21 and self.values.include?("A")
      return sum - 10
    else 
      return sum
    end
  end
  
  def is_bust?
     self.bj_value > 21 
  end 
  
end
