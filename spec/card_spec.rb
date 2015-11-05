
require 'rspec'
require 'card.rb'

describe Card do
  subject(:card) {Card.new(:club, 2)}
  describe "#initialize" do
    it "sets suit" do
      expect(card.suit).to eq(:club)
    end
    it "sets type" do
      expect(card.type).to eq(2)
    end
  end
end
