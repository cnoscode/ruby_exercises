#time1 = (Time.gm(1989, 12, 27) + 10**9)
#puts "I will turn one billion seconds old at this time: "
#puts time1
=begin
puts "What year were you born in?"
	year = gets.chomp.to_i

puts "What month were you born in? (Number please)"
	month = gets.chomp.to_i

puts "What day of the month were you born on? (Number please)"
	day = gets.chomp.to_i

time = Time.gm(year, month, day)

time_now = Time.new
my_age = 24
age_count = 1
	while Time.gm(year + age_count, month, day) < time_now
		puts "SPANK!"
		age_count += 1
	end
#puts age_count
puts (age_count == my_age)

puts "Hello, what is your name?"

name = gets.chomp

puts "Hello, #{name}."

if name[0] == ?C 
	puts "You are awesome - I can just tell."
end


def is_rb? file
	file[-3..-1] == '.rb'
end

puts is_rb?('chap12.rb')


da_man = 'Mr. T'
big_T = da_man[1]
puts big_T

puts ?r
puts 78.chr
=end

def roman_to_integer roman
#vals = {}

vals = {	'm' => 1000,
			 		'd' => 500,
			 		'c' => 100,
			 		'l' => 50,
			 		'x' => 10,
			 		'v' => 5,
			 		'i' => 1		}

	roman.each_char do |letter|
		a = letter.downcase
		new_vals = vals[a]
		puts new_vals
		
			if !new_vals
				puts "Enter valid roman numeral."
				#return false
			end	
	end
	
end

roman_to_integer('MDCVI')

























