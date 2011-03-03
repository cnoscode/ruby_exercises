=begin
puts "Enter your first name: "
fname = gets.chomp
puts "Enter your middle name: "
mname = gets.chomp
puts "Enter your last name: "
lname = gets.chomp

fullname = (fname + mname + lname).strip
puts "Your full name has " + fullname.length.to_s + " characters in it. Cool!"
=end
puts "6.2 - Number 1"
puts "-------------------"
puts "Tell your boss you want a raise: "
print "You: "
raise = gets.chomp

boss = raise.upcase
puts 'Boss: WHADDAYA MEAN, ' + "'#{boss}'" + '?!? - YOUR\'RE FIRED!!'

print "There is one more problem - would you like continue(yes/no): "
answer = gets.chomp
case answer
	when 'yes', 'y'
		puts "Let us move forward..."
		puts "6.2 - Number 2 - Format 'Table of Contents' just like author"
		puts "-------------------"
		
		line_width = 50
		header = 'Table of Contents'
		ch1 = 'Chapter 1: Getting Started'
		ch2 = 'Chapter 2: Numbers        '
		ch3 = 'Chapter 3: Letters        '
		p1 = 'page  1'
		p9 = 'page  9'
		p13 = '  page 13'
		
		puts( header.center( line_width ) )
		puts 
		puts( ch1.ljust( line_width/2 ) + p1.rjust( line_width/2 ) )  
		puts( ch2.ljust( line_width/2 ) + p9.rjust( line_width/2 ) ) 
		puts( ch3.ljust( line_width/2 ) + p13.rjust( line_width/2 ) ) 
		exit
	when 'no', 'n'
		puts "Good-bye."
		exit
	else
		puts "I don't understand - exiting program..."
		exit
end

