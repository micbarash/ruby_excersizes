dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"];

def substring(string, dictionary)
	words = string.split;
	resultHash = {};
	dictionary.each do |x|
		i = 0;
		while i<words.length
			if words[i].include? x
				if resultHash.key?(x) == false
					resultHash[x] = 1;
				else
					resultHash[x] += 1;
				end
				i+=1;
			else
				i+=1;
			end
		end
	end
	p resultHash;
end
substring("Howdy partner, sit down! How's it going?", dictionary);

#if resultHash.key?(x) == false
				#resultHash[x] = 1;
			#else
				#resultHash[x] += 1;
			#end
#**check if the key exists in the hash, add the key if need it or increment it if exists