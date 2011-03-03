puts "7.5 - Number 1"
puts 'Song Title: 99 bottles of beer on the wall'
puts '---> We\'re only drinking a max of 5 beers tonight.'

num_bottles = 99
count = 0
	while num_bottles == 99
		while count < 4
			puts num_bottles.to_s + ' bottles of beer on the wall, ' + num_bottles.to_s + ' bottles of beer.'
			num_bottles -= 1
			puts 'Take one down and pass it around, ' + num_bottles.to_s + ' bottles of beer on the wall!'
			count += 1
		end
	end

