def sort some_array
  recursive_sort some_array, []
end

def recursive_sort unsorted_array, sorted_array
  if unsorted_array.length <= 0
    return sorted_array
  end
  
  smallest_word = unsorted_array.pop
  still_unsorted = []
  
  # puts unsorted_array
  
  # Jose < Sibil, Sibil goes into still_unsorted, Jose becomes smallest
  # Cyril < Jose, Jose goes into still_unsorted, Cyril becomes smallest
  # Thomas !< Cyril, Thomas goes into still_unsorted
  # 
  # still_unsorted = Sibil, Jose, Thomas
  # Cyril gets pushed into sorted_array
  # recursive sort gets called and still_unsorted is passed in as parameter
  # as unsorted_array...
  # 
  # Sibil < Thomas, Thomas goes into still_unsorted, Sibil becomes smallest
  # Jose < Sibil, Sibil goes into still_unsorted, Jose becomes smallest
  # Jose gets pushed into sorted_array
  # recursive sort gets called and still_unsorted is passed in as parameter...
  
  unsorted_array.each do |element_in_unsorted|
    if element_in_unsorted.downcase < smallest_word.downcase
      still_unsorted.push smallest_word
      smallest_word = element_in_unsorted
    else
      still_unsorted.push element_in_unsorted
    end
  end
  
  sorted_array.push smallest_word
  recursive_sort still_unsorted, sorted_array
  
end
puts sort(['Jose', 'cyril', 'thomas', 'Sibil'])
puts '------------------------------------------------'
def shuf arr
  arr.sort_by{rand}
end
puts shuf(['Jose', 'Cyril', 'Thomas', 'Sibil'])
puts '------------------------------------------------'

def english_num number
  if number < 0
    return 'Please enter a number that isn\'t negative.'
  end
  
  if number == 0
    return 'zero'
  end
  num_string = ''

  ones_place = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight',
  'nine']
  tens_place = ['ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
  teens = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']
  
  left = number
  
  write = left/1000000
  # left = left - write*1000000
  left -= write*1000000
  
  if write > 0
    thou = english_num write
    num_string += thou + ' million'
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

puts english_num(1999999)
puts '------------------------------------------------'
puts '------------------------------------------------'

numBottles = 5
5.times do
  puts english_num(numBottles).capitalize + ' bottles of beer on the wall, ' + english_num(numBottles) + ' bottles of beer.'
  
  puts 'Take one down and pass it around, ' + english_num(numBottles -= 1) + ' bottles of beer left on the wall!'
  
  puts
end
