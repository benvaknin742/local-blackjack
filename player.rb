class Player
  attr_accessor :chip, :hand
  
	def initialize(chip = 0, hand = nil) 
		@chip = chip
		@hand = hand
	end 
 
 def hit?
  p "want to hit? y/n"
  p "your cards: "
  p self.hand.show.join(", ")
  gets.chomp == "y"
  end

   def show
    self.map { |card| card.show }
  end
  
end 
