# Your Code Here
def map(s_array) 
  new_array = []
  i = 0 
 
  while i < s_array.length do
    new_array.push(yield(s_array[i])) 
    i += 1
  end
 
  new_array
end



def reduce(s_array, s_p=nil)
  if s_p
    total = s_p
    i = 0
  else 
    total = s_array[0]
    i = 1
  end  
  
  while i < s_array.length do
    total = yield(total, s_array[i])
    i += 1
  end  
  
  total
end  

