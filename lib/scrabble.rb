class Scrabble
  def initialize(word)
    @word = word
    @letters = word.upcase.split('') if word_is_a_string?
    @word_score = 0
    @score_table = {
      1 => %w[A E I O U L N R S T],
      2 => %w[D G],
      3 => %w[B C M P],
      4 => %w[F H V W Y],
      5 => %w[K],
      8 => %w[J X],
      10 => %w[Q Z]
    }
  end

  def score
    return 0 unless word_is_a_string?

    letters.map do |letter|
      return 0 unless character_is_a_letter?(letter)

      score_table.map do |letter_value, letter_group|
        if letter_group.include?(letter)
          @word_score += letter_value
        end
      end
    end

    @word_score
  end

  private

  attr_reader :word, :letters, :score_table

  def word_is_a_string?
    word.is_a?(String)
  end

  def character_is_a_letter?(char)
    /[A-Z]/.match?(char)
  end
end
