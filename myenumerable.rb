module MyEnumerable
  def all?
  for item in @list 
    value = yield item if block_given?
    return value if value == false
  end
  value
  end

  def any?
    for item in @list 
      value = yield item if block_given?

      return value if value == true
    end

    value
  end

  def filter
    selected = []

    for item in @list 
      value = yield item if block_given?

      selected.push(item) if value == true
    end

    selected
  end
end
