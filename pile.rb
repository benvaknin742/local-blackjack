class Pile < Array 
  require 'card'
# when a new pile is made, either pass it nothing, by default returns empty array. when passed something it will grab from  my_deck

  def self.new(num_of_cards = nil, pile = nil)
    if num_of_cards and pile
      super pile.pop(num_of_cards)
    elsif num_of_cards
      wrong_pile = super()
      num_of_cards.times { wrong_pile << Card.new }
      return wrong_pile
    else
      super()
    end
  end

  def values
    self.map { |card| card.value }
  end
  
  def suits
    self.map { |card| card.suit }
  end
    
  def show
    self.map { |card| card.show }
  end


end





