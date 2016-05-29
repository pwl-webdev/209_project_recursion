def fibs_rec(n)
	if n == 0
		return [0]
	elsif n == 1
		return [0,1]
	else
		x = fibs_rec(n-1)
		return x << (x[-1] + x[-2])
	end
end

puts fibs_rec(0)
puts fibs_rec(1)
puts fibs_rec(10)