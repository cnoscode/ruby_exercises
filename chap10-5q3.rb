puts "----------------------------------------------------------"
puts "10.5 - Number 3 - Ninety-nine bottles of beer on the wall"
puts "----------------------------------------------------------"

def english_num num
	if num < 0
		return 'Please enter a number that isn\'t negative.'
	end
	if num == 0
		return 'zero'
	end
	
	num_string = ''

	ones_place = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
	tens_place = ['ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
	teens = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']

	left = num
#####################################################
	write = left/1000
	left -= write*1000

	if write > 0
		thou = english_num write
		num_string += thou + ' thousand'
			if left > 0	
				num_string += ' '
			end
	end
#####################################################
 
	write = left/100
	left -= write*100

	if write > 0
		#reursion
		hundreds = english_num write
		num_string += hundreds + ' hundred'
			if left > 0
				num_string += ' '
			end
	end
#####################################################
	write = left/10
	left -= write *10

	if write > 0
		if ((write == 1) and (left > 0))
			num_string += teens[left-1]
			left = 0
		else
			num_string += tens_place[write-1]
		end
	
		if left > 0
			num_string += '-'
		end
	end
#####################################################
	write = left 
	left = 0

	if write > 0
		num_string += ones_place[write-1]
	end
 	
	num_string 
	
end

english_num(9999)
#####################################################
num = 9999

num_bot = num

count = 0
	while count < 4
		puts english_num(num_bot).capitalize + ' bottles of beer on the wall, ' + english_num(num_bot) + ' bottles of beer.'
			num_bot -= 1
		puts 'Take one down and pass it around, ' + english_num(num_bot) + ' bottles of beer on the wall!'
			count += 1
	end

