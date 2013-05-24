class Card
  include Comparable 
  attr_accessor :value, :suit
  
	def initialize(value = Card.values[rand(13)], suit = Card.suits[rand(4)]) 
		@value = value
		@suit = suit
	end 
  
  def <=>(other)
    self.to_i <=> other.to_i
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

  def show
    return value.to_s + suit.to_s
  end

  def bj_value
    return 11 if self.value == "A"
    return 10 if self.value.to_i == 0 
    self.value.to_i
  end
  
  
  
#----- class -----
  
  def self.values
    %w(2 3 4 5 6 7 8 9 10 J Q K A)
  end
  
  def self.suits 
    %w(H D C S) 
  end 



  
end 
