class OrangeTree
	
	def initialize 
		@treeHeight = 0
		@treeAlive = true
		@num_oranges = 0
	end
	
	def height
		if @treeAlive
			@heightTree
		else
			return "The orange tree is dead!"
		end
	end
	
	def one_year_passes
		if @treeAlive
			@treeHeight += 0.5
			return "Tree height : #{@treeHeight} feet"
		else
			return "Orange tree is dead; that's why it can't grow!"
		end
	end
	
	def count_the_oranges
		if @treeAlive
			return "Number of oranges : #{@num_oranges}"
		else
			return "There are no oranges on the orange tree!"
		end
	end

end # End Class

orange = OrangeTree.new
puts orange.one_year_passes
puts orange.count_the_oranges