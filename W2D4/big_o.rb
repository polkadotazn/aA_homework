require "byebug"

def sluggish
  hash = Hash.new(0)
  fish = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']
  fish.each_with_index do |el1, idx1|
    fish.each_with_index do |el2, idx2|
      unless idx1 == idx2
        if el2.length > el1.length
          hash[el1] += 1
        else
          hash[el1] = 0
        end
      end
    end
  end
  hash.select {|k,v| v == 0}
end

def dominant(fish)

  return fish if fish.length <= 1

  midpoint = fish.count / 2
  sorted_left = dominant(fish.take(midpoint))
  sorted_right = dominant(fish.drop(midpoint))

  merge(sorted_left, sorted_right).last
end

def merge(left, right)
  merged = []

  until left.empty? || right.empty?
    case left[0].length <=> right[0].length
    when -1
      # debugger
      merged << left.shift
    when 0
      merged << left.shift
    when 1
      merged << right.shift
    end
  end

  merged.concat(left)
  merged.concat(right)

  merged
end

def clever_o
  fish = ["fish", "fiiish", "fiiiiish", 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']
  biggest = nil
  fish.each do |el|
    if biggest.nil? || el.length > biggest.length
      biggest = el
    end
  end
  biggest
end

def slow_dance(direction)
  tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]
  i = 0
  while i < tiles_array.length
    if direction == tiles_array[i]
      return i
    end
    i += 1
  end
end

def fast_dance(direction)
  
end
