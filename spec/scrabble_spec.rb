require 'scrabble'

describe Scrabble do
  describe '#score' do
    it 'returns an integer' do
      scrabble = Scrabble.new('')
      expect(scrabble.score).to be_a Integer
    end
  end
end
