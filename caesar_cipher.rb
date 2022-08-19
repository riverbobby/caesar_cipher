require 'pry-byebug'

def caesar_cypher(string, shift_factor)
	array_encoded = string.split("").map do |char|
		code = char.ord
		if code >= 65 && code <= 90
			code += shift_factor
			while code > 90
				code -= 26
			end
			while code < 65
				code += 26
			end
		end
		if code >= 97 && code <= 122
			code += shift_factor
			while code > 122
				code -= 26
			end
			while code < 97
				code += 26
			end
		end
		char = code.chr 
	end

	return array_encoded.join("")
end

puts "Enter a phrase to encrypt"
string_to_encrypt = gets.chomp
puts "Enter a integer to use for encription\npositive shifts up\nnegative shifts down"
number = Integer(gets) rescue false

while number == false
	puts "Enter a VALID integer"
	number = Integer(gets) rescue false
end

encrypted_string = caesar_cypher(string_to_encrypt, number)
puts "Your encripted phrase is:\n#{encrypted_string}"


#binding.pry