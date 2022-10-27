module MyEnumerable
    def all?
        nums = []
        list.each { |num| nums.push(num) if yield num }
        p nums.length == list.length
    end

    def any?
        nums = []
        list.each { |num| nums.push(num) if yield num }
        p !nums.empty?
    end

    def filter
      filtered_nums = []
      list.each { |num| filtered_nums.push(num) if yield num}
      p filtered_nums
    end

    def max
      max_num = 0
      list.each {|num| max_num = num > max_num ? num : max_num}
      p max_num
    end

    def min
    end
    
    def sort
    # quick sort/ insertion sort... in progress
    end
end
