class Card
  attr_accessor :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def output_card
    puts "The #{self.rank} of #{self.suit}"
  end

  def self.random_card
    Card.new(rand(10), :spades)
  end
end

class Deck
 
  def initialize

    @cards = []
    @ranks = [2,3,4,5,6,7,8,9,10,:Jack,:Queen,:King,:Ace]
    @suits = [:Spades, :Diamonds, :Hearts, :Clubs]

    @ranks.each do |rank|
      @suits.each do |suit|
        @cards << Card.new(rank, suit)
      end
    end   
    
  end

  def out_put
    @cards.each do |card|
      card.output_card
    end
  end

  def shuffle
    @cards.shuffle!
  end

  def deal
    top = @cards.shift
    puts "#{top.output_card} is the top card of the deck."
  end

end

deck = Deck.new
deck.shuffle
#deck.out_put
deck.deal