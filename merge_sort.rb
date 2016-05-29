def merge_sort(input)
	left = []
	right = []
	result = []
	half = (input.length/2).floor
	if half >= 1
		l_div =  input[0..half-1]
		r_div = input[half..-1]
		# puts "in div left table #{l_div} right table #{r_div}"
		l_div.length > 1 ? left = merge_sort(l_div) : left = l_div
		r_div.length > 1 ? right = merge_sort(r_div) : right = r_div
	else
		return input
	end
	while !left.empty? || !right.empty? do
		# puts "in while left #{left} right #{right}"
		if left[0] == nil
			result << right.shift
		elsif right[0] == nil
			result << left.shift
		elsif left[0] <= right[0]
			result << left.shift
		else
			result << right.shift
		end
	end
	return result
end

puts merge_sort([1])
puts merge_sort([18,7])
puts merge_sort([11,10,2,56,23,8,12,99,54])