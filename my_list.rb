class MyList

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