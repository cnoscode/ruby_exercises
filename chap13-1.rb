class Array
  def shuffle 
    a_one = self.sort_by{rand}
    a_one
  end
  #puts self
end

class Integer
  def factorial
    if self == 1 || self == 0
      return 1
    else
      self * (self-1).factorial
    end
  end
  
  def roman   

    rn = ''
    rn = 'M' * (self/1000)
    
    hund = (self % 1000/100)
    tens = (self % 100/10)
    ones = (self % 10/1)
    
    if hund == 9 
      rn += 'CM' 
    elsif hund == 4
      rn += 'CD'
    else   
      rn += 'D' * (self % 1000/500)
      rn += 'C' * (self % 500/100)
    end
 
    if tens == 9
      rn += 'XC' # 90's
    elsif tens == 4
      rn += 'XL' # 40's
    else
      rn += 'L' * (self % 100/50)
      rn += 'X' * (self % 50/10)
    end
    # if ones have a 9 in it then put 'IX'
    # if ones have a 4 in it then put 'IV'
    if ones == 9
      rn += 'IX'
    elsif ones == 4
      rn += 'IV'
    else
      rn += 'V' * (self % 10/5) 
      rn += 'I' * (self % 5/1) 
    end
  rn 
  end # end def    
end # end class

puts ['be', 'ab', 'do', 'cj'].shuffle
puts 4.factorial
puts 49.roman

=begin
class Die
  def initialize
    roll
  end

  def roll
    @number_showing = 1 + rand(6)
  end
  
  def showing
    @number_showing
  end

end

die = Die.new
puts die.showing

die.roll
puts die.showing
puts die.showing
die.roll
puts die.showing
puts die.showing
=end
