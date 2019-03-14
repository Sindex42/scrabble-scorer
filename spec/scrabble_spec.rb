require 'scrabble'

describe Scrabble do
  describe '#score' do
    it 'returns an integer' do
      scrabble = Scrabble.new('')
      expect(scrabble.score).to be_a Integer
    end

    it 'returns 0 for an empty string' do
      scrabble = Scrabble.new('')
      expect(scrabble.score).to eq 0
    end

    it 'returns 1 for "a"' do
      scrabble = Scrabble.new('a')
      expect(scrabble.score).to eq 1
    end
  end
end
