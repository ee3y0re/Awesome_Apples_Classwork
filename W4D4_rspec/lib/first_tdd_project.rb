def my_uniq(array)
	originals = []
	array.each { |ele| originals << ele if !originals.include?(ele) }
	originals
end

class Array
	def two_sum
		pairs = []
		self.each_with_index do |ele, i| 
			self.each_with_index do |ele2, j|
				pairs << [i, j] if j > i && ele + ele2 == 0
			end
		end
		pairs 
	end
end

def my_transpose(array)
	(0...array[0].length).map do |idx|
		array.map do |ele|
			ele[idx]
		end
	end
end

def stock_picker(array)
	
end


# describe "#stock_picker" do
#   subject(:stocks) { [6, 10, 1, 2, 3, 2, 1, 2, 3, 4, 7, 0] }

#   it "should pick pairs of days with the greatest profit" do
#     expect(stocks.stock_picker).to eq([[2, 10], [6, 10]])
#   end
# end

class HanoiTower

end