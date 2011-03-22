puts "--------------------------------------------------"
puts "12.2 - Number 1 - One billion seconds"
puts "--------------------------------------------------"

time1 = (Time.gm(1989, 12, 27) + 10**9)
puts "I will turn one billion seconds old at this time: "
puts time1
=begin
puts "--------------------------------------------------"
puts "12.2 - Number 2 -  Happy Birthday"
puts "--------------------------------------------------"

puts "What year were you born in?"
	year = gets.chomp.to_i

puts "What month were you born in? (Number please)"
	month = gets.chomp.to_i

puts "What day of the month were you born on? (Number please)"
	day = gets.chomp.to_i

time = Time.gm(year, month, day)

time_now = Time.new
#my_age = 23
age_count = 0
	while Time.gm(year + age_count, month, day) < time_now
		puts "SPANK!"
		age_count += 1
	end
#puts age_count
#puts (age_count == my_age)

puts "--------------------------------------------------"
puts "12.6 - Number 1 -  Party like its..."
puts "--------------------------------------------------"
def roman_to_integer roman
#vals = {}

vals = {'m' => 1000,
			 	'd' => 500,
			 	'c' => 100,
			 	'l' => 50,
			 	'x' => 10,
			 	'v' => 5,
			 	'i' => 1}
			 		
sum_total = 0
i = 0

	roman.reverse.each_char do |letter|
		a = letter.downcase
		new_val = vals[a]
		
			if !new_val
				puts "*** Enter a valid roman numeral ***"
				return
			end	
			
			if new_val < i
				new_val *= -1
			else
				i = new_val
			end
			
			#takes each value in new_val and adds it to sum_total
			sum_total += new_val 
			
	end

puts sum_total
end

roman_to_integer('MCMXCIX')
puts "--------------------------------------------------"
puts "12.2 - Number 2 -  Birthday Helper"
puts "--------------------------------------------------"

bDates = {}
f = File.read("/Users/cjose/work/ruby_exercises/bdates.txt")

f.each_line do |line|
	line = line.chomp
	#puts line.split(",")
	comma = 0
	#names = ''
		#reads through line char by char until it reaches a comma
		while line[comma].chr != ','
			comma +=1
		end
		
		names = line[0..(comma-1)]
		dates = line[-12..-1]
		
		bDates[names] = dates
		#puts bDates
end

puts "Enter a name to see their birthdate:"
names = gets.chomp

dates = bDates[names]

	if !dates
		puts "Enter valid name, choose from..."
		puts "Christopher Alexander"
		puts "Christopher Lambert"
		puts "Christopher Lee"
		puts "Christopher Lloyd"
		puts "Christopher Pine"
		
	else
		puts dates[0..12]
	end
=end
















