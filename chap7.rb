=begin
puts "7.5 - Number 1 - 99 bottles of beer on the wall"
puts 'Song Title: 99 bottles of beer on the wall'
puts '---> We\'re only drinking a max of 5 beers tonight.'

num_bottles = 99
count = 0
#while num_bottles == 99
	while count < 4
		puts num_bottles.to_s + ' bottles of beer on the wall, ' + num_bottles.to_s + ' bottles of beer.'
		num_bottles -= 1
		puts 'Take one down and pass it around, ' + num_bottles.to_s + ' bottles of beer on the wall!'
		count += 1
	end
#end

puts "------------------------------------"
puts "7.5 - Number 2 and 3 - Deaf Granny"
puts "------------------------------------"

	while true
		puts "If you want stop talking to Gran, say 'BYE' three times in a row"
		puts "Say something to Gran: "
		toGran = gets.chomp
		
			if toGran == 'BYE BYE BYE'
					puts "--->Gran: I SAID I HATED CAKE! BYE!"
					exit
			end
				
			if toGran == toGran.upcase
				r = (rand(20)) + 1930
				puts "--->Gran: NO, NOT SINCE #{r}!"
			else 
				puts "--->Gran: HUH?! SPEAK UP, SONNY!"
			end
	end

puts "------------------------------------"
puts "7.5 - Number 4 - Leap Years"
puts "------------------------------------"
=end
puts "Enter a starting year:"
	year1 = gets.chomp.to_i
puts "Enter a ending year:"
	year2 = gets.chomp.to_i
puts "------------------------------------"

	while year1 <= year2
		f = (year1%4)
			if f != 0
				year1 += 1
			elsif f == 0
				if year1%100 != 0 || year1%400 == 0
					puts "#{year1} is a leap year."
					year1 += 4
				end
			end
	end








