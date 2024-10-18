require 'rspec'
require_relative '../lib/algebraic_notation'

RSpec.describe AlgebraicNotation do
  include AlgebraicNotation

  describe '#translate' do
    it 'splits the input into an array of letter and number' do
      expect(translate('a8')).to eq([0, 0])
    end

    it 'converts b1 to [1, 7]' do
      expect(translate('b1')).to eq([1, 7])
    end

    it 'converts c3 to [2, 5]' do
      expect(translate('c3')).to eq([2, 5])
    end

    it 'converts d4 to [3, 4]' do
      expect(translate('d4')).to eq([3, 4])
    end

    it 'converts e5 to [4, 3]' do
      expect(translate('e5')).to eq([4, 3])
    end

    it 'converts f6 to [5, 2]' do
      expect(translate('f6')).to eq([5, 2])
    end

    it 'converts g7 to [6, 1]' do
      expect(translate('g7')).to eq([6, 1])
    end

    it 'converts h8 to [7, 0]' do
      expect(translate('h8')).to eq([7, 0])
    end

  end
end