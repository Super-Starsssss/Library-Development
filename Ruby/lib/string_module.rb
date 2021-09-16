module ManipulationString

	# find all index of an target string in parent string
	def find_index_sub_string str, target
		arr = str.split("")
		temp = ""
		arr_index = []
		arr.each_with_index {|v, i|
			temp << v
			p temp
			if temp.include? target then
				arr_index.push(i)
				temp = ""
			end
		}
		return arr_index

	end

	# generate all substring of parent string
	def get_substrings str
		(0..string.length-1).flat_map do |i|
		    (1..string.length-i).flat_map do |j|
		      string[i,j]
		    end
	  	end
	end
end