puts "--------------------------------------------------"
puts "9.5 - Number 1 - Improved Ask method"
puts "--------------------------------------------------"
def ask question
	while true
		puts question
		reply =gets.chomp.downcase
	#if (reply == 'yes' || reply == 'no')
		if reply == 'yes'
			return true
		else
			return false
		end
	break 
	end
end

puts 'Survey...'
wets_bed = ask 'Do you wet the bed?'
puts
puts wets_bed

puts "--------------------------------------------------"
puts "9.5 - Number 2 - Old-school Roman numerals"
puts "--------------------------------------------------"

def old_roman_numeral num
	rn = ''
	#increment for each roman numeral
	
	#rn += 'M' * (num % 10000/1000)
	rn += 'M' * (num/1000)
	rn += 'D' * (num % 1000/500)
	rn += 'C' * (num % 500/100)
	rn += 'L' * (num % 100/50)
	rn += 'X' * (num % 50/10)
	rn += 'V' * (num % 10/5)
	rn += 'I' * (num % 5/1)
	
  puts "#{num} is the same as: #{rn}"
end

old_roman_numeral(4)

puts "--------------------------------------------------"
puts "9.5 - Number 3 - Modern Roman numerals"
puts "--------------------------------------------------"

def mod_roman_numeral num

rn = 'M' * (num/1000)

hund = (num % 1000/100)
tens = (num % 100/10)
ones = (num % 10/1)

  if hund == 9 
    rn += 'CM' 
  elsif hund == 4
    rn += 'CD'
  else  	
    rn += 'D' * (num % 1000/500)
    rn += 'C' * (num % 500/100)
  end

  if tens == 9
    rn += 'XC' # 90's
  elsif tens == 4
    rn += 'XL' # 40's
  else
    rn += 'L' * (num % 100/50)
    rn += 'X' * (num % 50/10)
  end
    # if ones have a 9 in it
    # then put 'IX'
    # if ones have a 4 in it
    # then put 'IV'
	if ones == 9
		rn += 'IX'
	elsif ones == 4
		rn += 'IV'
	else
		rn += 'V' * (num % 10/5) 
		rn += 'I' * (num % 5/1) 
	end
	puts "#{num} is the same as: #{rn}"
	
end
mod_roman_numeral(1999)