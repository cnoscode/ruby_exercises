puts "5.6 - Number 1"
puts "-------------------"

puts "Enter your first name: "
	fname = gets.chomp
puts "Enter your middle name: "
	mname = gets.chomp
puts "Enter your last name: "
	lname = gets.chomp

puts 'Hello, ' + fname + ' ' + mname + ' ' + lname + ', it\'s very nice to meet you.'  

print "There is one more problem - would you like continue(yes/no): "
	answer = gets.chomp
	
case answer
	when 'yes', 'y'
		puts "Let us move forward..."
		puts "5.6 - Number 2"
		puts "-------------------"
		puts "Please enter your favorite number: "
			num = gets.chomp
			newnum = num.to_i
			newnum +=1
		puts "--->This number is way better - trust me: " + newnum.to_s
		exit
	when 'no', 'n'
		puts "Good-bye."
		exit
	else
		puts "I don't understand - exiting program..."
		exit
end
		
