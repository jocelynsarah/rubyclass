#!/usr/bin/env ruby

def convert_f_to_c(num)
	(num - 32) * (5.0/9.0)
end

def convert_c_to_f(num)
	num * 1.8 + 32
end

puts "Type temperature to convert followed by C if currently Celcius or F if Farenheight (e.g. 92F):"
STDOUT.flush
input = gets.chomp
conversion_to_make = "" << input[-1]
value_to_use = input[0, (input.length - 1)].to_f

if conversion_to_make.downcase == "f" || conversion_to_make.downcase == "c"
	if conversion_to_make.downcase == "f" 

		puts "#{format("%.2f", convert_f_to_c(value_to_use))} Celcius"
	end
	if conversion_to_make.downcase == "c"
		puts "#{format("%.2f", convert_c_to_f(value_to_use))} Farenheight"
	end
else
	puts "You didn't enter a valid format."
end

# TODO: error if value_to_use has alpha
# TODO: error if input is only 1 character





