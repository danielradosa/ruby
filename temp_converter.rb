loop do
  puts "| Pick your original temperature scale:       |"
  puts "|---------------------------------------------|"
  puts "| 1. Celsius                                  |"
  puts "| 2. Kelvin                                   |"
  puts "| 3. Fahrenheit                               |"
  puts "|---------------------------------------------|"

  choice = gets.chomp.strip

  case choice
  when '1'
    puts "|---------------------------------------------|"
    puts "| You chose Celsius, now type in the value:   |"
    puts "|---------------------------------------------|"
    celsius = gets.chomp.strip.to_f
    puts "|---------------------------------------------|"

    puts "| Now convert to:                             |"
    puts "| 1. Kelvin                                   |"
    puts "| 2. Fahrenheit                               |"
    puts "|---------------------------------------------|"

    temp_to = gets.chomp.strip
    puts "|---------------------------------------------|"

    if temp_to == '1'
      final_temp = celsius + 273.15
      puts "#{celsius} degrees Celsius is #{final_temp} Kelvin."
      puts "|---------------------------------------------|"
    elsif temp_to == '2'
      final_temp = (celsius * 9 / 5) + 32
      puts "#{celsius} degrees Celsius is #{final_temp} Fahrenheit."
      puts "|---------------------------------------------|"
    else
      puts "Invalid conversion choice."
    end

  when '2'
    puts "|---------------------------------------------|"
    puts "| You chose Kelvin, now type in the value:    |"
    puts "|---------------------------------------------|"
    kelvin = gets.chomp.strip.to_f
    puts "|---------------------------------------------|"

    puts "| Now convert to:                             |"
    puts "| 1. Celsius                                  |"
    puts "| 2. Fahrenheit                               |"
    puts "|---------------------------------------------|"

    temp_to = gets.chomp.strip
    puts "|---------------------------------------------|"

    if temp_to == '1'
      final_temp = kelvin - 273.15
      puts "#{kelvin} Kelvin is #{final_temp} degrees Celsius."
      puts "|---------------------------------------------|"
    elsif temp_to == '2'
      final_temp = (kelvin - 273.15) * 9 / 5 + 32
      puts "#{kelvin} Kelvin is #{final_temp} degrees Fahrenheit."
      puts "|---------------------------------------------|"
    else
      puts "Invalid conversion choice."
    end

  when '3'
    puts "|---------------------------------------------|"
    puts "| You chose Fahrenheit, now type in the value:|"
    puts "|---------------------------------------------|"
    fahrenheit = gets.chomp.strip.to_f
    puts "|---------------------------------------------|"

    puts "| Now convert to:                             |"
    puts "| 1. Celsius                                  |"
    puts "| 2. Kelvin                                   |"
    puts "|---------------------------------------------|"

    temp_to = gets.chomp.strip
    puts "|---------------------------------------------|"

    if temp_to == '1'
      final_temp = (fahrenheit - 32) * 5 / 9
      puts "#{fahrenheit} degrees Fahrenheit is #{final_temp} degrees Celsius."
      puts "|---------------------------------------------|"
    elsif temp_to == '2'
      final_temp = (fahrenheit - 32) * 5 / 9 + 273.15
      puts "#{fahrenheit} degrees Fahrenheit is #{final_temp} Kelvin."
      puts "|---------------------------------------------|"
    else
      puts "Invalid conversion choice."
    end

  else
    puts "Invalid original temperature scale choice."
  end

  puts "| Want to convert again? (yes/no)             |"
  puts "|---------------------------------------------|"
  answer = gets.chomp.strip.downcase
  puts "|---------------------------------------------|"
  break if answer != 'yes'
end
