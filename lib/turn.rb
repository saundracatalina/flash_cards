class Turn
  attr_reader :string, :card
  def initialize(string, card)
# string represents a guess to a question
# card object represents the current card being shown
    @string = string
    @card = card
  end
end
