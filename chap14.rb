=begin
toast = Proc.new do
	puts 'Cheers!'
end

toast.call
###############################
#passing a proc into a method
def do_self_importantly some_proc
	puts "Everybody just HOLD ON! I'm doing something..."
	some_proc.call
	puts "OK everyone, I'm done. As you were."
end

say_hello = Proc.new do
	puts "hello"
end

say_bye = Proc.new do
	puts "bye"
end

do_self_importantly say_hello
do_self_importantly say_bye
###############################
do_you_like = Proc.new do |good_stuff|
	puts "I really like #{good_stuff}!"
end

do_you_like.call 'Ruby'
do_you_like.call 'Cyril'
###############################
def maybe_do some_proc
	if rand(2) == 0
		some_proc.call
	end
end

def twice_do some_proc
	some_proc.call
	some_proc.call
end

wink = Proc.new do	
	puts '<wink>'
end

glance = Proc.new do
	puts '<glance>'
end

maybe_do wink
maybe_do wink
maybe_do glance
twice_do wink
twice_do glance

def compose proc1, proc2
	Proc.new do |x|
		proc2.call(proc1.call(x))
	end
end

square_it = Proc.new do |x|
	x * x
end

double_it = Proc.new do |x|
	x + x
end

double_then_square = compose double_it, square_it 
square_then_double = compose square_it, double_it

puts double_then_square.call(5)
puts square_then_double.call(5)

class Array
	def each_even(&was_a_block__now_a_proc)
	# is_even is an array
		is_even = true
	
		self.each do |object|
			if is_even
				was_a_block__now_a_proc.call object
			end
			is_even = !is_even
		end
	end
end

names = ['Cyril', 'Jose', 'Sibil', 'Thomas']
names.each_even do |name|
	puts "Everyone loves #{name}! I know I do!"
end

[3, 8, 15, 16, 23].each_even do |odd|
	puts "#{odd} is NOT an even number!"
end
=end

def profile block_desc, &block
	start_time = Time.new
	block.call
	duration = Time.new - start_time
	puts "#{block_desc}: #{duration} seconds"
end

profile '25000 doublings' do
	number = 1
	25000.times do
		number += number
	end
	
	puts "#{number.to_s.length} digits"
end

profile 'count to a million' do
	number = 0
	1000000.times do
		number += 1
	end
end