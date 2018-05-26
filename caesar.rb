def caesar(string, shift)
	arr = string.split('')
	arr.map do |x|
		code = x.ord
		newArr = []
		if ((code >= 65 && code <= 90) || (code >= 97 && code <= 122))
			x = code + shift
			if (x > 90 && x < 97)
				x = x - 26
			elsif (x > 122)
				x = x - 26
			end
			newArr.push(x.chr)
		else 
			newArr.push(x)
		end
		puts newArr.join()
	end
end

caesar('bib', 4)