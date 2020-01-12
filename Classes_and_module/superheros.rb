	
module Superpower

	def check_run
		if @power == "run"
			puts "He can run fast"
		else
			puts "He does not run fast"
		end
	end
	
	def check_fly
		if @power == "fly"
			puts "He can fly"
		else
			puts "He cannot fly"
		end
	end
	
	
	def check_jump
		if @power == "jump"
			puts "He can jump high"
		else
			puts "He cannot jump high"
		end
	end
end
	

class Superhero
	include Superpower
	def initialize(power)
		@power = power
	end	
end


flash = Superhero.new("run")
shaktiman = Superhero.new("fly")
spiderman = Superhero.new("jump")

flash.check_run
flash.check_fly
flash.check_jump

shaktiman.check_run
shaktiman.check_fly
shaktiman.check_jump

spiderman.check_run
spiderman.check_fly
spiderman.check_jump
	

