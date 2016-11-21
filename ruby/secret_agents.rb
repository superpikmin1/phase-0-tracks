#-take string as parameter
#	-create counter
#	-while counter is less than length of string
#		-replace string index with .next at each index of parameter
#		-add 1 to counter
#	-print string



def encrypt (password)
	counter = 0
	while counter < password.length
		if password[counter] == "z"
			password[counter] = "a"
	elsif 
			password[counter] = password[counter].next
		end
		counter+=1
	end
	p password
end

#encrypt("abc")
#encrypt("zed")



#-take string as parameter
#	-create counter
#	-create alphabet string
#	-while counter less than string.length
#		-find letter at specific index
#		-find index of said letter in alpha string
#		-use index -1 to find letter previous
#		- replace original letter with new letter
#		- counter ++
#	-print string

def decrypt (puzzle)
	counters = 0
	alpha = "abcdefghijklmnopqrstuvwxyz"
	while counters < puzzle.length
		puzzle[counters] = alpha[alpha.index(puzzle[counters]) -1]
		counters+=1
	end
	p puzzle
end

#decrypt("bcd")
#decrypt("afe")

#decrypt(encrypt("swordfish"))

#-ask user for encrypt or decrypt
#-ask for password
#-call requested method on password

puts "encrypt or decrypt?"
request = gets.chomp
while request != ("encrypt") && request != ("decrypt")
	puts "Invalid request: encrypt or decrypt"
	request = gets.chomp
end
puts "Enter password"
password = gets.chomp
if request == "encrypt"
	encrypt(password)
elsif request == "decrypt"
	decrypt(password)
end