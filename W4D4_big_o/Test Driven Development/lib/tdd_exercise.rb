class Array
  
  def my_uniq
    return_arr = []
    (0...self.length).each do |i|
      return_arr << self[i] if !return_arr.include?(self[i])
    end
    return_arr
  end

  def two_sum
    return_arr = []
    (0...self.length).each do |i|
      (i+1...self.length).each do |j|
        return_arr << [i, j] if self[i] + self[j] == 0
      end
    end
    return_arr
  end

  def my_transpose
    raise 'array must be n * n' if self.length != self.first.length
    transposed = Array.new(self.length) {Array.new()}

    self.each do |sub|
      sub.each_with_index do |el, j|
        transposed[j] << el
      end
    end

    return transposed
  end

  def stock_picker
    indices = []
    profit = 0

    self.each.with_index do |el1, i|
      self.each.with_index do |el2, j|
        if j > i
          if el2 - el1 > profit
            profit = el2 - el1
            indices = [i, j]
          end 
        end
      end
    end
    return indices
  end
end

class Towers

  attr_accessor :game

  def initialize
    @game = [[:r, :y, :b, :o], [], []]
  end

  def move(start_idx, end_idx)
    pile = @game[start_idx].shift
    @game[end_idx].unshift(pile)
    return @game
  end

  def won?
    return false if @game == [[:r, :y, :b, :o], [], []]
    return true if @game[1] == [:r, :y, :b, :o] || @game[2] == [:r, :y, :b, :o]
    false
  end

end