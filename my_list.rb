require_relative './my_enumerable'

class MyList
  include MyEnumerable

  def initialize(*list)
    @list = list
  end

  attr_reader :list

  def each
    yield @list
  end
end

# Create a list
nums = MyList.new(1, 2, 3, 4)
p nums.list # => [1,2,3,4]

# Test #each method
nums.each { |num| puts num }
# 1
# 2
# 3
# 4

# Test #all? method
nums.all? { |e| e < 5 } # => true
nums.all? { |e| e > 5 } # => false

# Test #any? method
nums.any? { |e| e == 2 } # => true
nums.any? { |e| e == 5 } # => false

# Test #filter method
nums.filter(&:odd?) # => [1,3]
nums.filter(&:even?) # => [2,4]

# Test #max method
nums.max # => 4

# Test #min method
nums.min # => 1
