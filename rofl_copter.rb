def clear_screen
  system("clear") || system("cls")
end

def roflcopter(with_L)
  clear_screen
  if with_L
    puts "             :LOL:ROFL:ROFL"
    puts "           _________"
    puts "  L     __/        []\\"
    puts "  O ===[]           []\\"
    puts "  L      \\__________[]/"
  else
    puts "    ROFL:ROFL:LOL:"
    puts "           _________"
    puts "        __/        []\\"
    puts " LOL===[]           []\\"
    puts "         \\__________[]/"
  end
  puts "             I   I"
  puts "          ----------/"
end

loop do
  roflcopter(true)
  sleep(0.1)
  roflcopter(false)
  sleep(0.1)
end
