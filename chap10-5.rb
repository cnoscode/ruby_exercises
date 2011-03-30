#example in book
puts "--------------------------------------------------"
puts "10.5 - Number 1 -Shuffle"
puts "--------------------------------------------------"
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

  write = left/1000000
  left -= write*1000000

  if write > 0
    mil = english_num write
    num_string += mil + ' million'
    if left > 0
      num_string += ' '
    end
  end

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

puts english_num(1245059)
