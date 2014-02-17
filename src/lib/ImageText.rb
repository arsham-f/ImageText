require 'rubygems'
require 'RMagick'
require 'helpers.rb'
include Magick

class ImageText
	@@chars = " .,-_*^+=?$&%Q@\#"
	@@maxchar = @@chars.length - 1

	def initialize(image, max_width=150.0)
		puts "No image" if not File.exist?(image)
		@img = ImageList.new(image).average

		scale = [(max_width.to_f / @img.columns), 1.0].min
		@img.scale!(scale)
	end

	def texify()
		text = ""
		@img.each_pixel do
			|pixel, x, y|
			
			text += "\n" if (x == @img.columns - 1)
				
			colour = pixel.to_color(AllCompliance, false, QuantumDepth, true)

			gScale = gray_scale(colour);
			#puts @@chars.length
			#puts gScale
			#puts ((@@chars.length) * gScale)
			text += @@chars[(@@maxchar * gScale).round]

		end
		return text
	end
end
