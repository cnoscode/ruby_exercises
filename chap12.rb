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
my_age = 23
age_count = 0
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
			 		
sum_total = 0
#i = 0

	roman.each_char do |letter|
		a = letter.downcase
		new_val = vals[a]
		
			if !new_val
				puts "*** Enter a valid roman numeral ***"
				return
			end	
						
			#if new_val > i	
				 #new_val = i
				 #i = new_val
			#end
			#puts new_val
			
			#takes each value in new_val and adds it to sum_total
			sum_total += new_val 
			
	end

puts sum_total
end

roman_to_integer('MCMXCIX')






















