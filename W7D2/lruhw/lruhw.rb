class LRUCache

  attr_reader :data

  def initialize
    @data = {}
  end

  def count
    @data.length
  end

  def add(el)
    @data[el] = 1 
  end            

  def show
    print @data
  end

  private
  # helper methods go here!

end

cash = LRUCache.new
cash.add("Mario")
p cash.count
cash.show