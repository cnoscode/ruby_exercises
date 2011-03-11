#example in book
=begin
M = 'land'
o = 'water'

world = [[o,o,o,o,o,o,o,o,o,o,o],
		 [o,o,o,o,M,M,o,o,o,o,o],
		 [o,o,o,o,o,o,o,o,M,M,o],
		 [o,o,o,M,o,o,o,o,o,M,o],
		 [o,o,o,M,o,M,M,o,o,o,o],
		 [o,o,o,o,M,M,M,M,o,o,o],
		 [o,o,o,M,M,M,M,M,M,M,o],
		 [o,o,o,M,M,o,M,M,M,o,o],
		 [o,o,o,o,o,o,M,M,o,o,o],
		 [o,M,o,o,o,M,o,o,o,o,o],
		 [o,o,o,o,o,o,o,o,o,o,o]]
		 
def continent_size world, x, y
	if world[y][x] != 'land'
		return 0
	end

	size = 1
	world[y][x] = 'counted land'
	
	size += continent_size(world, x-1, y-1)
	size += continent_size(world, x  , y-1)
	size += continent_size(world, x+1, y-1)
	size += continent_size(world, x-1, y  )
	size += continent_size(world, x+1, y  )
	size += continent_size(world, x-1, y+1)
	size += continent_size(world, x  , y+1)
	size += continent_size(world, x+1, y+1)
	
	size
end

puts continent_size(world, 5, 5)
puts

#page 94

#takes in elements of array
def sort a
	rec_sort a, []
end

#sorted_a starts out as empty array

def rec_sort unsorted_a, sorted_a
	if unsorted_a.length <= 0
		#once unsorted_a is empty, return contents of sorted_a 
		return sorted_a
	end
	
	#take last element of array and compare it to the others 
	
	smallest = unsorted_a.pop
	still_unsorted_a = []		
	
	unsorted_a.each do |unsorted_elem|
		if unsorted_elem < smallest
			still_unsorted_a.push smallest
			smallest = unsorted_elem
			#puts sorted_a
		else
			still_unsorted_a.push unsorted_elem		
		end
	end
	
	sorted_a.push smallest
	
	rec_sort still_unsorted_a, sorted_a
end
puts sort(['be', 'ab', 'do', 'cj'])


def shuffle a
	a_one = []
	a_one = a.sort_by{rand} 
	puts a_one
end

shuffle(['be', 'ab', 'do', 'cj'])

def dict_sort a
	recDict_sort a, []
end

def recDict_sort unsorted_a, sorted_a
	if unsorted_a.length <= 0
		#once unsorted_a is empty, return contents of sorted_a 
		return sorted_a
	end
	
	#take last element of array and compare it to the others 
	
	smallest = unsorted_a.pop
	still_unsorted_a = []		
	
	unsorted_a.each do |unsorted_elem|
		if unsorted_elem.downcase < smallest.downcase
			still_unsorted_a.push smallest
			smallest = unsorted_elem
			#puts sorted_a
		else
			still_unsorted_a.push unsorted_elem		
		end
	end
	
	sorted_a.push smallest
	
	recDict_sort still_unsorted_a, sorted_a
end
puts dict_sort(['Hello', 'ab', 'do', 'run'])
=end

def english_num num
if num < 0
	return 'Please enter a number that isn\'t negative.'
end
if num == 0
	return 'zero'
end
num_string = ''

ones_place = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
tens_place = ['ten', 'twenty', 'thirty', 'forty', 'fifty', 'sityx', 'seventy', 'eighty', 'ninety']
teens = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']

left = num 
write = left/100
left -= write*100

if write > 0
	#reursion
	hundreds = english_num write
	num_string = num_string + hundreds + 'hundred'
		if left > 0
			num_string += ' '
		end
end

write = left/10
left -= write *10

if write > 0
	if ((write == 1) and (left > 0))
		num_string += teens[left-1]
		left = 0
	else
		num_string += tens_place[write-1]
	end
end

write = left 
left = 0

if write > 0
	num_string += ones_place[write-1]
end

	num_string
end

puts english_num( 0)
puts english_num( 13)
puts english_num( 45)
puts english_num( 99)
puts english_num( 234)