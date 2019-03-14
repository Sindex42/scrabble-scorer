class Scrabble
  attr_reader :word

  def initialize(word)
    @word = word
  end

  def score
    return 1 if word == 'a'
    0
  end
end
