require 'debug'

string = "Practice makes perfect"
dictionary = ['Practice', 'perfect' 'makes']


def validSubsequence2(string, dictionary)
	#left = left index -> string pointer
	#right = right index -> string pointer
	result = []
	for left in 0...string.length
		subString = ""
		for right in  left+1...string.length
			if dictionary.include?(string[left..right])
				result.push true	
			end	
		end
	end
	dictionary.length == result.length
end



# p validSubsequence2 "ciao paolo", ["ciao", "paolo"]
p validSubsequence2 "ciao paolo", ["ciao", "paolo"]