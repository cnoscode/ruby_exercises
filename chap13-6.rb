class OrangeTree
	
	def initialize 
		@heightTree = 0
		@treeAge = 0
		
	end
	
	def height
		
	end
	
	def one_year_passes
		while @treeAge < 10	
				@heightTree += 2
				@treeAge += 1
		end
		
		puts "Height of tree (in feet): #{@heightTree}" 
		puts "Age of tree: #{@treeAge}" 

		
	end

end # End Class
orange = OrangeTree.new
puts orange.one_year_passes