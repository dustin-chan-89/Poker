require 'hand.rb'
require 'rspec'
require 'deck.rb'

describe Hand do
  let(:deck) {Deck.new}
  let(:hand) {Hand.new(deck)}

  describe "#initialize" do
    it "takes a deck" do
      expect(hand.cards.size).to eq(5)
    end
  end

end
