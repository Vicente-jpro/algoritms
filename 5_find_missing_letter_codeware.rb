def find_missing_letter(str)
 i = 0

 str = replase_repetive_caracter(str)
 str = order_array_chars?(str)
 array_size = str.size-1
 
 while i < array_size
 	first_element = to_number(str[i])
 	next_element = to_number(str[i + 1])

 	if (first_element + 1) != next_element
 		caracter = (first_element + 1)
 		if is_capitle_letter?(str[i])

 		  return caracter.chr
 		end
 		return (caracter.chr).downcase
 	end
   i += 1
 end

end


def replase_repetive_caracter(str)
 i = 0

 new_array = Array.new
 new_array << str[0]

 while i < str.size
 	if !exist?(str[i], new_array)
 	  new_array << str[i]
 	end
 	i += 1
 end
 return new_array
end


def order_array_chars?(str) 
  i = 0

  while i < str.size
  	j = i + 1
  	
  	while j < str.size
	  first_element = to_number(str[i])
	  next_element = to_number(str[j])

	  if first_element > next_element
	  	aux = str[i]
	  	str[i] = str[j]
	  	str[j] = aux
	  end
	  j += 1
  	end
  	i += 1
  end
  return str
end


def exist?(value, str)
  i = 0
  while i < str.size
  	if value == str[i]
  	  return true	
  	end
  	i += 1 
  end	

  return false
end


def to_number(caract)
  number = caract.codepoints.first.to_i
  number
end


def is_capitle_letter?(caract)
  number = to_number(caract)
  return ( (number >= 65 ) and ( number <= 90 ) )
end

# ['a','b','c','d','f'] -> 'e'
# ['O','Q','R','S'] -> 'P'

puts find_missing_letter(['a','b','c','d','f'])
puts find_missing_letter(['O','Q','R','S'])