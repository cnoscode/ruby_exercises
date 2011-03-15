#time1 = (Time.gm(1989, 12, 27) + 10**9)
#puts "I will turn one billion seconds old at this time: "
#puts time1

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

