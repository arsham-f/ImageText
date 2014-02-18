require 'rubygems'
require 'RMagick'
require 'helpers.rb'
include Magick

class ImageText
	@@chars = " .,-_\"*^+=|?$&%Q@\#"
	@@maxchar = @@chars.length - 1

	def initialize(image, max_width=150.0)
		panic "File not found" if not File.exist?(image)
		begin
			@img = ImageList.new(image).average
		rescue
			panic "Could not load image!"
		end

		scale = [(max_width.to_f / @img.columns), 1.0].min
		@img.scale!(scale)
	end

	def texify(breakline = "\n")
		text = ""
		@img.each_pixel do
			|pixel, x, y|
			
			text += breakline if (x == @img.columns - 1)
				
			colour = pixel.to_color(AllCompliance, false, QuantumDepth, true)
			gScale = gray_scale(colour);

			text += @@chars[(@@maxchar * gScale).round]

		end
		return text
	end
end
