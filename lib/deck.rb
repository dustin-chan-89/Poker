require_relative 'card.rb'


class Deck
  attr_accessor :cards

  TYPE = [2,3,4,5,6,7,8,9,10,:J,:Q,:K,:A]
  SUIT = [:club, :diamond, :heart, :spade]

  def initialize
    @cards = []
    TYPE.each do |t|
      SUIT.each do |s|
        @cards << Card.new(s,t)
      end
    end
  end

  def shuffle!
    @cards.shuffle!
  end

  def deal_a_card
    @cards.pop
  end
end
