class OrangeTree
	
	def initialize 
		@treeHeight = 0
		@num_oranges = 0
		@treeAlive = true
	end
	
	def height
		if @treeAlive
			@treeHeight
		else
			return "The orange tree is dead!"
		end
	end
	
	def one_year_passes
		if @treeAlive
			@treeHeight += 2.5
			#first couple years, no oranges...
			@num_oranges = 0
			return "Tree height : #{@treeHeight} feet"
		else
			return "Orange tree is dead; that's why it can't grow!"
		end
	end
	
	def count_the_oranges
		if @treeAlive
			@num_oranges += 4
			return "Number of oranges : #{@num_oranges}"
		else
			return "There are no oranges on the orange tree!"
		end
	end
	
	def pick_an_orange
		if @treeAlive
			if @num_oranges > 0
				@num_oranges -= 1
				return "Number of oranges after being picked : #{@num_oranges}"
			else
				return "No oranges to pick..."
			end
		end
	end

end # End Class

orange = OrangeTree.new
puts orange.one_year_passes
puts orange.count_the_oranges
puts orange.one_year_passes
puts orange.count_the_oranges
puts orange.pick_an_orange
puts orange.pick_an_orange
