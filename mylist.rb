require_relative 'myenumerable'
class MyList
  include MyEnumerable
  attr_accessor :list

  def initialize(*args)
    @list = args
  end

  def each
    @list.size.times do |item|
      yield item if block_given?
    end
  end
end

list = MyList.new(1, 2, 3, 4)
list.each { |e| puts e }
puts(list.all? { |e| e < 5 })
puts(list.all? { |e| e > 5 })
puts(list.any? { |e| e == 2 })
puts(list.any? { |e| e == 5 })
print(list.filter { |e| e&.even? })
