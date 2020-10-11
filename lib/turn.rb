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
      "Correct!"
    elsif (card.answer == guess) == false
      "Incorrect."
    end
  end
end
