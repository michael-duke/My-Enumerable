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
p nums.list

nums.each {|num| puts num}

# 1
# 2
# 3
# 4


# Test #all? method
nums.all? { |e| e < 5 }
nums.all? { |e| e > 5 }

# Test #any? method
nums.any? { |e| e == 2 }
nums.any? { |e| e == 5 }