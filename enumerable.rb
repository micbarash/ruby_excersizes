#The following code is an excersize to rebuild classic Ruby enumerable methods in my own way
#Each method serves the same purpose (or supposed to) as it's "normal" equivilant

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

	def my_none?
		self.my_each do |elt|
			return false if yield elt
		end
		true
	end

	def my_count(arg=nil)
		count = 0
		if block_given?
			self.my_each { |elt| count += 1 if yield elt }
		elsif arg
			self.my_each { |elt| count += 1 if elt == arg }
		else
			count = self.length	
		end
		count
	end
	#This method is incomplete, have yet to figure out what to do if no block is given :-/
	def my_map
		mapped = []
		if block_given?
			self.my_each { |elt| mapped << (yield elt) }
		end
		mapped
	end
end
array = [1,2,4,7,4,2,9]
p array.my_map {|x| x + 1 }