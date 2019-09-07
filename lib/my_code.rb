# Your Code Here


def map(array)
  count = 0
  new = []
  while count < array.size do
    new.push(yield(array[count]))
    count += 1  
  end
  return new
end

def reduce(array, start=nil)
  if start
    count = 0
    total = start
  else
    total = array[0]
    count = 1
  end
  
  while count < array.length
    total = yield(total, array[count])
    count += 1
  end
  total
end