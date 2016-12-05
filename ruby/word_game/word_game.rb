class Word_Game
	attr_reader :guess_counter, :goal_word, :word_progress

	def initialize(word)
		@goal_word = word.downcase
		@guess_counter = 0
		@guess_array = []

		@word_progress = ""
	end

	def transform
		dash_counter = @goal_word.length
		dash_counter.times do 
			@word_progress << "-"
		end
		@word_progress
	end

	def update (letter)
		counter = 0
		while counter < @goal_word.length
			if @goal_word[counter] == letter
				@word_progress[counter] = letter
			end
			counter += 1
		end
		@word_progress
	end

	def guess (letter)
		if !@guess_array.include?(letter)
			@guess_array << letter
			@guess_counter += 1
		end
	end

end


puts "Type the word"
input = gets.chomp
game = Word_Game.new(input)
p game.transform
until 1 == 2 do
	if game.word_progress == game.goal_word

		puts "YOU WON!!"
		break
	elsif game.guess_counter > game.goal_word.length

		puts "YOU LOSE LOL"
		break
	else
		puts "Guess a letter"
		letter = gets.chomp
		game.guess(letter)
		p game.update(letter)
	end
end
		