class Turn
  attr_reader :guess, :card
  def initialize(guess, card)
    @guess = guess
    @card = card
  end

  def correct?
    card.answer == guess
  end

  def feedback
    if (card.answer == guess) == true
      return "Correct!"
      # require 'pry'; binding.pry
    # elsif card.answer != guess
    #   "Incorrect."
    end
  end
end
