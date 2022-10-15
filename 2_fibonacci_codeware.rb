def fibonacci(num)
	if num < 1 
	  puts "Numero invalido"
	elsif num == 1
		return 1
	  else
	  	f1 = 1
	  	f2 = 1
	  	serie = Array.new
	  	serie << f1
	  	serie << f2

	  	while num > 2
	  	  f3 = f1 + f2
	  	  f1 = f2
	  	  f2 = f3

	  	  serie << f3
	  	  num -=1
	  	end

	  	return serie
	  end

end


puts fibonacci(4)