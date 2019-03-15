require 'scrabble'

describe Scrabble do
  describe '#score' do
    it 'returns an integer' do
      scrabble = Scrabble.new('')
      expect(scrabble.score).to be_a Integer
    end

    context 'non-scoring words' do
      it 'returns 0 for an empty string' do
        scrabble = Scrabble.new('')
        expect(scrabble.score).to eq 0
      end

      it 'returns 0 for nil' do
        scrabble = Scrabble.new(nil)
        expect(scrabble.score).to eq 0
      end

      it 'returns 0 for " \t\n"' do
        scrabble = Scrabble.new(' \t\n')
        expect(scrabble.score).to eq 0
      end
    end

    it 'returns 1 for "a"' do
      scrabble = Scrabble.new('a')
      expect(scrabble.score).to eq 1
    end

    it 'returns 4 for "f"' do
      scrabble = Scrabble.new('f')
      expect(scrabble.score).to eq 4
    end

    it 'returns 6 for "street"' do
      scrabble = Scrabble.new('street')
      expect(scrabble.score).to eq 6
    end

    it 'returns 22 for "quirky"' do
      scrabble = Scrabble.new('quirky')
      expect(scrabble.score).to eq 22
    end

    it 'returns 41 for "OXYPHENBUTAZONE"' do
      scrabble = Scrabble.new('OXYPHENBUTAZONE')
      expect(scrabble.score).to eq 41
    end
  end
end
