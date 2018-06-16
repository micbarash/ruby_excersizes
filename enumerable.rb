module Enumerable
	def my_each
		self.length.times do |elt|
			yield self[elt]
			self
		end
	end

	def my_each_with_index
		self.length.times do |index|
			yield(index, self[index])
		end
	end
end

array = ["a","b","c"]
