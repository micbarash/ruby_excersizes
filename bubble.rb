def bubble_sort(array)
	(array.length - 1).times do
		for i in (0...(array.length) - 1)
			a = array[i]
			b = array[i+1]
			if (a <=> b) == 1
				array[i], array[i+1] = array[i+1], array[i]
			end
		end
	end
	p array
end
bubble_sort([4,3,78,2,0,2])

def bubble_sort_by(array)
	(array.length - 1).times do
		for i in (0...(array.length) - 1)
			a = array[i]
			b = array[i+1]
			result = yield(a, b)
			if result > 0
				array[i], array[i+1] = array[i+1], array[i]
			end
		end
	end
	p array
end
bubble_sort_by(["hi", "hello", "hey"]) do |left, right|
	left.length - right.length
end
