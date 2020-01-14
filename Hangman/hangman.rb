$words = ["ruby","rails",'java','c']
$random_index = $words.find_index($words.sample)
$ans_array = $words[$random_index].chars
$remaining_lives = 3
$open_letter = []

def check(letter)
	$ans_array.each do |y|
		if y == letter
			return true
		end
	end
	return false
end		


def display_letter(open_letter)
	$ans_array.each do |x|
		status = open_letter.include?x
		if status == true
			print x
			next
		else
			print '_ '
		end
	end
end



random_index = $words.find_index($words.sample)

ans_array = $words[random_index].chars

display_letter($open_letter)
while $remaining_lives != 0 do
	if $ans_array.size == $open_letter.size 
		puts "\nWinner !!!"
		break
	end
	puts
	puts "Enter letter"
	letter = gets.chomp
	status = check(letter)
	if status == true
		$open_letter.append(letter)
		display_letter($open_letter)
	else
		$remaining_lives -= 1
		puts "Wrong Guess !!!"
		puts "Chances Remaining : #{$remaining_lives}"
	end
	if $remaining_lives == 0
		puts "You Lose !!!"
	end
end




	


