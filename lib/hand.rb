require_relative 'deck.rb'
require_relative 'card.rb'


class Hand

  LISTHANDS = {
    high_card: 1,
    one_pair: 2,
    two_pair: 3,
    three_of_a_kind: 4,
    straight: 5,
    flush: 6,
    full_house: 7,
    four_of_a_kind: 8,
    straight_flush: 9
  }
  attr_reader :deck, :cards

  def initialize(deck) #receives an array of 5 cards
    @deck = deck
    deal_five_cards
  end

  def deal_five_cards
    @cards = []
    @deck.shuffle!
    5.times do
      @cards << @deck.cards.pop
    end
    @cards
  end

  def sort_hand!
    @cards.length.times do
      @cards.each_index do |i|
          if @cards[i+1] != nil
            @cards[i].eval_type > @cards[i+1].eval_type
            @cards[i], @card[i+1] = @card[i+1], @card[i]
          end
      end
    end
  end

  def eval_type_array
    result = []
    @cards.each do |eachCard|
      result << eachCard.eval_type
    end
    result
  end



  def eval_type_is_continous?
    type_array = self.eval_type_array
    diff = type_array[1] - type_array[0]
    type_array.each_index do |i|
      if type_array[i+1] != nil
        if type_array[i+1] - type_array[i] != diff
          return false
        end
      end
    end
    true
  end


  def straight_flush?
  end

  def four_of_a_kind?
  end

  def full_house?
  end

  def flush?
  end

  def straight?
  end

  def three_of_a_kind?
  end

  def two_pair?
  end

  def one_pair?
  end

  def evaluate
  end
end


if __FILE__ == $PROGRAM_NAME
  d = Deck.new
  h = Hand.new(d)
  h.deal_five_cards
  h.sort_hand!
end
