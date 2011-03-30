puts "------------------------------------------"
puts "8.3 - Number 1 - Sort Array on User Input"
puts "------------------------------------------"
puts "Please enter a bunch of words(press enter when you are finished):"

arr = []

while true
  word = gets.chomp 
  if word == ''
    break
  end
arr.push word
end

puts "Sorted:"
puts arr.sort


puts "--------------------------------------------------"
puts "8.3 - Number 2 - Table of Contents - Using arrays"
puts "--------------------------------------------------"

arr =	[['Getting Started',  1],
  ['Numbers',           9], 
  ['Letters',		     13]]

header = 'Table of Contents'
puts header.center(50)
puts

ch_num = 1
arr.each do |elem|
  ch_name = elem[0]
  page = elem[1]
  #puts "Chapter #{ch_num}:"
  puts 'Chapter ' + ch_num.to_s + ': ' + ch_name.ljust(25) + 
  'page '.rjust(13) + page.to_s.rjust(0)
  ch_num += 1
end