require 'rspec'
require 'first_tdd_project'

describe "#my_uniq" do
  # Array containg [1, 2, 1, 3, 3].my_uniq => [1, 2, 3]
  # Array containing [1, 1, 1, 1, 1].my_uniq => [1]
  # Return array should have a diff obj_id than original
  subject(:array) { [1, 2, 1, 3, 3] }

  it "should have no copies" do
    expect(my_uniq(array)).to eq([1,2,3])
  end

  it "should return an array with a different object id" do
    expect(my_uniq(array)).not_to be(array)
  end

end

describe Array do
  #[-1, 0, 2, -2, 1].two_sum # => [[0, 4], [2, 3]]
  #smaller elements should come first
  #sorted dictionary-wise
  describe "#two_sum" do
    subject(:array) { [-1, 0, 2, -2, 1] }

    it "finds all pairs' positions where elements sum to 0" do
      expect(array.two_sum).to eq([[0, 4], [2, 3]])
    end

    #skipped until dictionary-wise resolved
    #[-1, 1, 2, -2, 1] => [0, 1], [0, 4], [2, 3]
    it "should be sorted dictionary-wise" do
      expect([-1, 1, 2, -2, 1].two_sum).to eq([[0, 1], [0, 4], [2, 3]])
    end

  end
end


# Take the big array of rows

# rows = [
#     [0, 1, 2],
#     [3, 4, 5],
#     [6, 7, 8]
#   ]

# turn rows into this
# => [[0, 3, 6],[1, 4, 7], [2, 5, 8]]

describe "#my_transpose" do 
  subject(:mult_array) { [[0, 1, 2], [3, 4, 5], [6, 7, 8]] }

  it "should make columns into rows" do
    expect(my_transpose(mult_array)).to eq([[0, 3, 6],[1, 4, 7], [2, 5, 8]] )
  end
end


describe "#stock_picker" do
  subject(:stocks) { [6, 10, 1, 2, 3, 2, 1, 2, 3, 4, 7, 0] }

  it "should pick pairs of days with the greatest profit" do
    expect(stocks.stock_picker).to eq([[2, 10], [6, 10]])
  end
end

# Class that takes in a number which represents their stack size
# Focus on #initialize #move and #won? (ignore #gets and #puts)
# initialize with 3 arrays and array 1 should have all numbers (1-8), array 2 and 3 empty

describe HanoiTower do
  
  subject(:stacks) { HanoiTower.new(9) }

  describe "#initialize" do
    it "should take in a number" do
      expect(stacks.num).to eq(9)
    end

    it "should have an array of numbers and the length num" do
      expect(stacks.array_1).to eq([9, 8, 7, 6, 5, 4, 3, 2, 1])
    end

    it "should have two empty arrays" do
      expect(stacks.array_2).to eq ([])
      expect(stacks.array_3).to eq ([])
    end
  end

  #getter/setter under private/protected
  describe "#move" do
    let(:starting) { stacks.array_1 }
    let(:ending) { stacks.array_2 }

    # it "should take in starting array and ending array" do
    #   expect(stacks.move(starting, ending)).
    # end

    it "should not take in a starting array that is empty" do
      expect(starting.length).to be > 0
    end

    context "if there is element in the ending array" do
      it "should move the top element from the starting array to the ending" do
        stacks.array_1 = [3, 2]
        stacks.array_2 = [4]
        # expect(stacks.move(starting, ending))
        stacks.move(array_1, array_2)
        expect(stacks.array_1).to eq([3])
        expect(stacks.array_2).to eq([4, 2])
        # expect(ending.length).to be >= 1
      end
    end

    context "if move is invalid" do
      it "should raise error" do
        expect{stacks.move(array_2, array_1)}.to raise_error ("invalid move!") 
      end
      
      # it "should retry" do
      # end
    end

    # context "if move is valid" do
    #   it "should return true" do
    #   end
    #   it "should move the element" do
    #   end
    # end

  end

  # starting = [3]
  # ending = [4] 

  # => starting  = []
  #    ending = [4, 3]

  #move should take in starting array and ending array
  #starting array should not be empty
  #top element in starting array should be smaller than the element in the ending array, if there is element in ending
  #should raise error if move is invalid and retry
  #should return true if move is valid

end