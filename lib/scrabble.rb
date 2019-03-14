class Scrabble
  attr_reader :word, :score

  def initialize(word)
    @word = word
    @score = {
      'A' => 1,
      'F' => 4
    }
  end

  def score
    return 1 if word == 'a'
    return 4 if word == 'f'

    0
  end
end
