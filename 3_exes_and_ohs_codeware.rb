# DESCRIPTION:
# Check to see if a string has the same amount of 'x's and 'o's. 
#The method must return a boolean and be case insensitive. The string can contain any char.

# Examples input/output:

# XO("ooxx") => true
# XO("xooxx") => false
# XO("ooxXm") => true
# XO("zpzpzpp") => true // when no 'x' and 'o' is present should return true
# XO("zzoo") => false


def exes_and_ohs(str)
	str = str.downcase
	
	# XO("zzoo") => false

	if has_this_caracter("o", str) and !has_this_caracter("x", str)
	  return false
	elsif !has_this_caracter("o", str) and has_this_caracter("x", str)
	  return false
	elsif !(has_this_caracter("o", str) and has_this_caracter("x", str))
	  return true
	end

	exes = count_element("o", str)
	ohs = count_element("x", str)

	if exes == ohs
	  return true
	end

	return false
end


def has_this_caracter(caract, str)
	i = 0

	while i < str.size
	  if caract == str[i]
	  	return true
	  end

	  i += 1
	end
	return false 
end


def count_element(caract, str)
  i = 0
  count = 0
  
  while i < str.size
  	if caract == str[i]
  	  count += 1
  	end
  	i += 1
  end

  return count
end


# XO("ooxx") => true
# XO("xooxx") => false
# XO("ooxXm") => true
# XO("zpzpzpp") => true // when no 'x' and 'o' is present should return true
# XO("zzoo") => fals

puts exes_and_ohs("ooxx")
puts exes_and_ohs("xooxx")
puts exes_and_ohs("ooxXm")
puts exes_and_ohs("zpzpzpp")
puts exes_and_ohs("zzoo")

