# Your Code Here

def map_to_negativize(source_array)
  new = []
  i = 0
  while i < source_array.length do
    new.push(yield (source_array[i]))
    i += 1
  end
  return new
end

def reduce_to_total (source_array, starting_point = 0)
total = starting_point
i = 0
while i< source_array.length do
yield (source_array, starting_point)
  i+=1
end
total
end



map(array){|n| n * -1})
map(array){|n| n})
map(array){|n| n * 2}
map(array){|n| n ** 2}


reduce(array, starting_point){|memo, n| memo + n}
reduce(source_array){|memo, n| memo && n})
reduce(source_array){|memo, n| memo || n})
