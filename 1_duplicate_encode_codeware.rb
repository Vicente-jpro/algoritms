# The goal of this exercise is to convert a string to a new string where each character in the new string is "(" if that character appears only once in the original string, or ")" if that character appears more than once in the original string. Ignore capitalization when determining if a character is a duplicate.

# Examples
# "din"      =>  "((("
# "recede"   =>  "()()()"
# "Success"  =>  ")())())"
# "(( @"     =>  "))((" 

# describe "Fixed tests" do
#   it "should pass fixed tests" do
#     Test.assert_equals(duplicate_encode("din"),"(((")
#     Test.assert_equals(duplicate_encode("recede"),"()()()")
#     Test.assert_equals(duplicate_encode("Success"),")())())","should ignore case")
#     Test.assert_equals(duplicate_encode("(( @"),"))((")
#   end
# end

def duplicate_encode(str)
 new_str = ""
 i = 0
 str = str.downcase
  while i < str.size 
 	chose = exist?(str[i], str)
 	new_str << replace?(chose) 
 	i += 1
 end
 return new_str
end


def exist?(value, str)
	count = 0
	 i = 0
  	 while i < str.size
		if value == str[i]
		  count += 1
		end
		if count == 2 
		  return true
		end
		i += 1 
	end
	return false
end



def replace?(value_true)
  return ")" if value_true
  "("
end



puts duplicate_encode("din")
puts duplicate_encode("recede")
puts duplicate_encode("Success")
puts duplicate_encode("(( @")


