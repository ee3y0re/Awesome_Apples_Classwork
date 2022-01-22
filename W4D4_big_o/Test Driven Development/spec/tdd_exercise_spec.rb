require "RSpec"
require "tdd_exercise"

describe Array do 
  subject(:arr) {Array.new}
  let(:test_arr) {[1, 1, 2, 2, 3, 3]}

  describe '#my_uniq' do
    it 'removes duplicates from an array' do
      expect(test_arr.my_uniq).to eq ([1, 2, 3])
    end
  end

  describe '#two_sum' do
    it 'finds all pairs of positions where the elements at those positions sum to zero' do
      expect([-1, 0, 2, -2, 1].two_sum).to eq ([[0, 4],[2, 3]])
    end
  end

  describe '#my_transpose' do
    it 'raise an error when the array is not size n * n' do
      expect { [ [1],[2, 3], [4, 5, 6] ].my_transpose }.to raise_error(RuntimeError)
    end

    it 'shout transpose the given array (rotate the array)' do
      expect([ [0, 1, 2], [3, 4, 5], [6, 7, 8] ].my_transpose).to eq([[0, 3, 6], [1, 4, 7], [2, 5, 8]])
    end
  end

  describe '#stock_picker' do
    it 'should output the most profitable days pair to buy and sell' do 
      expect([4, 7, 9, 10, 1].stock_picker).to eq([0,3])
    end

    it 'should return an empty array if there is no profit to be made' do
      expect([10, 9, 8, 7, 6, 1].stock_picker).to eq([])
    end
  end
end

describe Towers do

  subject(:tower) {Towers.new}

  describe '#move' do
    it 'takes the top disc from a chosen pile and moves it to the specified pile' do
      expect(tower.move(0, 1)).to eq ([[:y, :b, :o], [:r], []])
    end
  end

  describe '#won?' do
    it 'should return false when the tower is completed in the original pile' do
      expect(tower.won?).to be false
    end
    context 'when the tower completed in another pile' do
      it 'should return true' do 
        expect(tower.won?).to be false
      end
    end
  end

end