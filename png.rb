require 'chunky_png'

image = ChunkyPNG::Image.new(128, 128, ChunkyPNG::Color(:white))

image[0, 1] = ChunkyPNG::Color(:black)
image[1, 1] = ChunkyPNG::Color(:black)
image[1, 0] = ChunkyPNG::Color(:black)
image[2, 0] = ChunkyPNG::Color(:black)
image[2, 3] = ChunkyPNG::Color(:black)
image[3, 5] = ChunkyPNG::Color(:black)

image.save('first_file.png')