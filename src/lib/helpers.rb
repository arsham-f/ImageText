
#Average out the reds, greens and blues
def average_colour(hex)
	hex[0] = "" if hex[0] == "\#"
	depth = hex.length / 3
	total = 0
	3.times do
		|i|
		total += hex.slice(i*depth, 4).to_i(16)
	end
        return total / 3.0
end


#On a scale of 0 (black) to 1 (white), how gray is it
def gray_scale(hex)
	return average_colour(hex) / "FFFF".to_i(16)
end

def panic(message)
	puts "FATAL ERROR"
	puts message
	exit
end
