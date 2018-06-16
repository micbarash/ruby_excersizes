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
			self
		end
	end

	def my_select
		copyArray = []
		self.my_each do |elt|
			if yield elt
				copyArray << elt
			end
		end
		copyArray
	end

	def my_all?
		self.my_each do |elt|
			return false unless yield elt
		end
	end

	def my_any?
		self.my_each do |elt|
			return true if yield elt
		end
		false
	end
end
