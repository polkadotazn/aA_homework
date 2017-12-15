class LRUCache
  def initialize(length)
    @cache = []
    @longest = (length)
  end

  def count
    @cache.length
    # returns number of elements currently in cache
  end

  def add(el)
    if @cache.include?(el)
      @cache.delete_at(index(el))
    end
    @cache.push(el)
    @cache.shift if @cache.length > 4
    # adds element to cache according to LRU principle
  end

  def show
    @cache
    # shows the items in the cache, with the LRU item first
  end

  private

  def index(el)
    @cache.index(el)
  end
  # helper methods go here!

end
