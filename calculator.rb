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

result = 10 - (multiplied_list.sum() % 10)

puts "This is your full ISBN-13 code"
puts code + result.to_s