class Deck < Pile

  def self.new(y = true)
    new_deck = super()
    Card.values.each do |value| 
      Card.suits.each do |suit| 
        new_deck << Card.new(value, suit)
      end 
    end 
    new_deck.shuffle! if y 
    return new_deck
  end 
end 
