def map(array)
  new_arr = []
  
  array.each do |num|
    new_arr << yield(num)
  end
  
  new_arr
end

# map([1, 2, 3]) { |pizza| pizza * 2 } #think of this as an anonymous method (a regular method without a name, and yield just calls it **so dont need to give it a name)

def reduce(array, starting_point = nil)
  
  if starting_point
    result = starting_point
    i = 0
  else
    result = array[0]
    i = 1
  end
  
  while i < array.length
    result = yield(result, array[i])
    i += 1
  end
  result
end

#nil, false 
  #order matters when doing reduce with conditional short circuit
