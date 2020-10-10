class Turn
  attr_reader :guess, :card
  def initialize(guess, card)
    @guess = guess
    @card = card
  end

  def correct?
    card.answer == guess
  end

  # def feedback
  #   if guess.new == true
  #     puts "Correct!"
  #   elsif guess.new == false
  #     puts "Incorrect!"
  #   end
  # end
end
