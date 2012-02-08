#!/usr/bin/env ruby


s = "Welcome to the forum.\nHere you can learn Ruby.\nAlong with other members.\n"
a = s.split("\n")

3.times do |x|
	puts "Line #{x+1}: #{a[x]}"
end
