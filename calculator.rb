=begin
The idea of this code is to receive an incomplete 
ISBN-13 code that has no check digit and return it 
complete
=end

def get_full_isbn13(code)
    multiplier = 1
    multiplied_list = []

    code.each_char do |digit|
        number = digit.to_i
        multiplied_list.append(number * multiplier)
        # multiplier must switch between 1 and 3
        multiplier = 4 - multiplier
    end

    result = 10 - (multiplied_list.sum() % 10)
    result = (result == 10) ? 0 : result

    code + result.to_s
end

puts "Please insert a ISBN-13 without a check digit"
code = gets.chomp
puts "This is your full ISBN-13 code"
puts get_full_isbn13(code)