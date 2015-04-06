class Rover

	attr_accessor :init_x, :init_y, :init_direction

	def initialize(init_x, init_y, init_direction)
	@x = init_x.to_i
	@y = init_y.to_i
	@direction = init_direction
	end

	def instructions(commands)
		commands.split("").each do |z|
			if z == "M"
				move_forward
			elsif z == "R"
				turn_right
			elsif z == "L"
				turn_left
			end
		end
	end

	def move_forward
		if @direction == "N" 
			@y += 1
		elsif @direction == "E"
			@x += 1
		elsif @direction == "S"
			@y -= 1
		elsif @direction == "W"
			@x -= 1
		end
	end

	def turn_right
		if @direction == "N"
			@direction = "E"
		elsif @direction == "E"
			@direction = "S"
		elsif @direction == "S"
			@direction = "W"
		elsif @direction == "W"
			@direction = "N"
		end
	end

	def turn_left
		if @direction == "N"
			@direction = "W"
		elsif @direction == "W"
			@direction = "S"
		elsif @direction == "S"
			@direction = "E"
		elsif @direction == "E"
			@direction = "N"
		end
	end

	def string
		puts "You are at #{@x}, #{@y}, facing: #{@direction}"
	end

end


def plateau

	puts "Enter upper right coordinates of plateau(seperated by space):"
	plateau = gets.chomp

end

def control
	counter = 0
	while counter < 2

	puts "Enter starting Position and direction(seperated by spaces):"
	init_p = gets.chomp
	init_p = init_p.split

	myRover = Rover.new(init_p[0],init_p[1],init_p[2])

	puts "Enter move instructions:"
	puts "M - Move forward, L - turn left, R - turn right"
	input_commands = gets.chomp
	
	myRover.instructions(input_commands)

	myRover.string

	counter += 1
	
end

end

plateau
control