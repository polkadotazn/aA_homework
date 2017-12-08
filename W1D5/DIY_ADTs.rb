class Stack

  def initialize
    @stack = []
  end

  def add(el)
    @stack << el
  end

  def remove
    @stack.pop
  end

  def show
    @stack.dup
  end

end


class Queue

  def intialize
    @queue = []
  end

  def enqueue(el)
    @queue << el
  end

  def dequeue
    @queue.shift
  end

  def show
    @queue.dup
  end

end

class Map

  def initialize
    @map = []
  end

  def assign(key, value)
    idx = @map.index { |pair| pair[0] == key }
    if !idx
      @map << [key, value]
    else
      @map[idx][1] = value
    end 
  end

  def lookup(key)
    @map.select { |k| k[0] == key }[2]
  end

  def remove(key)
    @map.reject! { |k| k[0] == key }
  end

  def show
    @map.dup
  end

end
