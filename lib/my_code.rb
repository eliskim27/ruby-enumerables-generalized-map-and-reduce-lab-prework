def map (source_array)
  new_array = []
  i = 0
  while i < source_array.length
    new_array.push(
      yield (source_array[i])   #{arbitrary work}
      )
    i += 1
  end
  new_array
end





def reduce(source_array, start_point = nil)
  if start_point
    total = start_point
    i = 0                       #lines 18-24 are to define start point for total
  else
    total = source_array[0]
    i = 1
  end
  while i < source_array.length
    total = yield(total, source_array[i])         #undefined block here
    i += 1
  end
  total
end
  
  
  
  
  
  
  
  
  
  
  
  
  
  
