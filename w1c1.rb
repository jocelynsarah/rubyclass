#!/usr/bin/env ruby

def age_year_month(array_in_seconds)
	array_in_seconds.each{|x|
	years = 0
	months = 0
	default_m = 'months'
	default_y = 'years'
	sec_in_year = 60*60*24*365
	secs_in_month = 60*60*24*30
	while x > sec_in_year
		x -= sec_in_year
		years += 1
	end
	while x > secs_in_month
		x -= secs_in_month
		months += 1
	end
	months +=1 if x >= (secs_in_month/2)

	default_m = 'month' if months == 1 
	default_y = 'year' if years == 1

	puts "You are #{years} years and #{months} #{default_m} old."}
end

ages_in_seconds = [979000000, 2158493738, 246144023, 1270166272, 1025600095]

age_year_month(ages_in_seconds)