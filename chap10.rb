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
=end

def shuffle a
	a_one = []
	
end

puts shuffle(['be', 'ab', 'do', 'cj'])