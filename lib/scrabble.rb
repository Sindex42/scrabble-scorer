class Scrabble
  attr_reader :word, :letters, :letter_score

  def initialize(word)
    @word = word
    @letters = word.upcase.split('') if word.is_a?(String)
    @word_score = 0
    @letter_score = {
      'A' => 1,
      'S' => 1,
      'T' => 1,
      'R' => 1,
      'E' => 1,
      'F' => 4
    }
  end

  def score
    return 0 unless word.is_a?(String)

    letters.map do |letter|
      if letter_score.include?(letter)
        @word_score += letter_score[letter]
      else
        return 0
      end
    end

    word_score
  end
end
