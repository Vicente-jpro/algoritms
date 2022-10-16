# In this kata you will create a function that takes a list of 
# non-negative integers and strings and returns a new list with 
# the strings filtered out.

# Example
# filter_list([1,2,'a','b']) == [1,2]
# filter_list([1,'a','b',0,15]) == [1,0,15]
# filter_list([1,2,'aasf','1','123',123]) == [1,2,123]



def filter_list(array)
  if exist_negative?(array)
  	return []
  end

  new_array = Array.new
  i = 0

  while i < array.size
  	if !is_letter?(array[i])
  	  new_array << array[i]
  	end
  	i += 1
  end
  return new_array
end


def exist_negative?(array)
  i = 0

  while i < array.size
  	if !is_letter?(array[i])
  		puts array[i].class
  	  if array[i] < 0
  	  	return true
  	  end	
  	end	
  	i +=1
  end
  return false
end

def is_letter?(lookAhead)
  begin
  	lookAhead.match?(/[[:alpha:]]/)
  rescue StandardError => e
  	return false
  end
  return true
end


# print filter_list([1,2,'a','b']) 
# puts ""
# print filter_list([1,'a','b',0,15]) 
# puts ""
print filter_list([1,2,'aasf','1','123',123])
#puts is_letter?('1')

