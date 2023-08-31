module MyEnumerable
  def all?
    @list.each do |item|
      value = yield item if block_given?
      return value if value == false
    end
    true
  end

  def any?
    @list.each do |item|
      value = yield item if block_given?
      return value if value == true
    end
    false
  end

  def filter
    selected = []
    @list.each do |item|
      value = yield item if block_given?
      selected.push(item) if value == true
    end
    selected
  end
end
