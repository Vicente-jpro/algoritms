def is_triangle(a, b, c)
  if (a < 1) and (b < 1) and (c < 1)
  	return false
  end	
  return is_condition_ok?(a, b, c)
end

def is_condition_ok?(a, b, c)
	case1 = a + b > c
	case2 = a + c > b 
	case3 = b + c > a
    
    return (case1 and case2 and case3)
end

puts is_triangle(1,2,2)
puts is_triangle(7,2,2)