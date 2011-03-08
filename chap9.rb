=begin
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
=end
puts "--------------------------------------------------"
puts "9.5 - Number 2 - Old-school Roman numerals"
puts "--------------------------------------------------"

def old_roman_numeral num
  puts num % 1000
end

old_roman_numeral(13)