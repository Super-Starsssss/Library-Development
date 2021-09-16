module ManipulationNumber

	# add missing number of an array
	def add_missing_number nums
		nums = self.simple_sort(nums)
		num1 = nums[0]
		num2 = nums[nums.length() -1]
		nums = self.simple_sort((nums + (num1..num2).select {|x| x} if (num1..num2).count > 3).uniq)
	end

	# custom sort 
	def simple_sort arr
	 	nums = []
	 	arr = arr.uniq
	 	arr.length.times do |i|
	 		nums.push(arr.min)
	 		arr.delete(arr.min)
	 	end
	 	return  nums

	end
	# generate fibonaci numbers
	def fibonaci_numbers count
		arr = []
		count.times do |i|
			arr.append(i) if i == 0 || i ==1
			len = arr.length()
			num1 = arr[len - 1]
			num2 = arr[len -2]
			arr.append(num1 + num2) if i != 0
		end
		return arr

	end
	# reverse a number
	def reverse_number number
		begin
			check = true if number < 0
		 	number = number * -1 if number < 0
		 	a = number%10
		 	b = (number%100 - a)/10
		 	c = number/100
		 	str = ""
		 	str << "#{a}" if a != 0
		 	str << "#{b}" if b != 0
		 	str << "#{c}" if c != 0
		 	result = str.to_i 
		 	result = result * -1 if check == true 
		 	return result

		rescue ArgumentError => e
			"Error: Argument must be a number"
		end
	end

end
