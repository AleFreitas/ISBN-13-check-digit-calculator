=begin
The idea of this code is to receive an incomplete 
ISBN-13 code that has no check digit and return it 
complete
=end

puts "Please insert a ISBN-13 without a check digit"
code = gets.chomp

multiplier = 1
multiplied_list = []

code.each_char do |digit|
    number = digit.to_i
    multiplied_list.append(number * multiplier)
    # multiplier must switch between 1 and 3
    multiplier = 4 - multiplier
end

puts multiplied_list