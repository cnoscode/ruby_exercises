#example in book
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

puts "--------------------------------------------------"
puts "10.3 - Sort Array"
puts "--------------------------------------------------"

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
puts "--------------------------------------------------"
puts "10.3 - Number 1 -Shuffle"
puts "--------------------------------------------------"

def shuffle a
	a_one = []
	a_one = a.sort_by{rand} 
	puts a_one
end

shuffle(['be', 'ab', 'do', 'cj'])

puts "--------------------------------------------------"
puts "10.3 - Number 2 -Dictionary Sort"
puts "--------------------------------------------------"

#used code from problem "Sort Array"
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