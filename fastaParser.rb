require 'rubygems'

def search_fasta query
  read_file = File.open("/Users/cjose/work/ruby_exercises/hshoe.fasta", "r" )
  
  file_content = ''
  fasta_headers = ''
  sequences = ''
  entry = ''
  line_num = 0
  entry_counter = 0
    
  read_file.each do |line|
    if line =~ />/ 
      fasta_headers += line
    else 
      sequences += line
    end
  end
  
  if /#{query}/i =~ sequences 
    puts "There is a match"
  else 
    puts "No matches"
  end
  
end
search_fasta("GAAATCGAACTAGGTCAGTGGTAC")