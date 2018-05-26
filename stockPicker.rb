def stockPicker(arr)
	buyDay = 0;
	sellDay = 0;
	i = 0;
	maxDiff = 0;
	while i < arr.length
		j = i+1;
		while j < arr.length
			if (arr[j] - arr[i]) > maxDiff
				maxDiff = arr[j] - arr[i];
				buyDay = arr[i];
				sellDay = arr[j];
			end
			j += 1;
		end
		i += 1;
	end
	puts "The day to buy is " + buyDay.to_s + ", The day to sell is " + sellDay.to_s
end
stockPicker([3,5,1,4,6,9,7,11])