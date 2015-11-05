class Card
  attr_reader :suit, :type, :eval_type

  TYPE = [2,3,4,5,6,7,8,9,10,:J,:Q,:K,:A]
  SUIT = [:club, :diamond, :heart, :spade]

  def initialize(suit, type)
    @suit = suit
    @type = type
    @eval_type = TYPE.index(type)
    @eval_suit = SUIT.index(suit)
  end

  def to_s
    print "#{@type} of #{@suit}"
  end
end
