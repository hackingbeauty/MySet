class MySet
  def initialize
    @empty = true
    @collection = []
    @size = 0
    @contains = false
  end
  
  def empty?
    @empty
  end
  
  def add(item)
    @collection.each do |col_item|
      return if col_item == item
    end
    @empty = false
    @size += 1
    @collection[@size] = item
  end
  
  def remove(item)
    
  end
  
  def size
    @size
  end
  
  def contains(item)
    @collection.each do |col_item|
      if col_item == item
         @contains = true
       end
    end
    @contains
  end
  
end