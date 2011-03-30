class OrangeTree
  def initialize
    @numOranges = 0
    @treeHeight = 0
    @treeAlive = true
  end
  
  def height
    if @treeAlive
      "Orange tree is #{@treeHeight} feet."
    else
      "The Orange tree sadly can't grow anymore."
    end
  end

  def one_year_passes
    if @treeAlive
      @treeHeight += 0.5
      @numOranges = 0
      #once reaching height of 20; tree dies
      if @treeHeight > 20 && rand(2) > 0
        @treeAlive = false
        "Tree is way too old...so it died."
      elsif @treeHeight > 4
        @numOranges = (@treeHeight * 2 + 4)
        "Height of Orange tree is #{@treeHeight} feet. and has a total of #{@numOranges} oranges."
      else
        "Orange Tree is still too young to grow any oranges."
      end
    else
      "Tree is still dead."
    end
  end

  def count_the_oranges
    if @treeAlive
      "Orange tree has #{@numOranges} oranges."
    else
      "There are no oranges left."
    end
  end
  
  def pick_an_orange
    if @treeAlive 
      if @numOranges > 0
        "There are #{@numOranges -= 1} oranges left after picking."
      else
        "There are no oranges left to pick."
      end
    else
      "Tree is dead so you can't pick oranges."
    end
  end

end

orange = OrangeTree.new

rand(20).times do
  orange.one_year_passes
end

puts orange.one_year_passes
puts orange.count_the_oranges
puts orange.one_year_passes
puts orange.one_year_passes
puts orange.count_the_oranges
puts orange.pick_an_orange
puts orange.count_the_oranges
