while true
  print ">> "
  cmd = gets
  puts( eval( cmd ) )
  if cmd == 'exit'
    puts 'Good-bye!'
    exit
  end
end