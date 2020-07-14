require 'chunky_png'

def draw_circle(png, x, y, r)
  png.circle(x, y, r, ChunkyPNG::Color.rgb(0, 0, 0))
end

png = ChunkyPNG::Image.new(180, 180, ChunkyPNG::Color.rgb(255, 255, 255))
draw_circle(png, 90, 90, 90)
png.save('circle.png', :interface => true)

# Tunnel
#
def draw_circle(png, x, y, r)
  png.circle(x, y, r, ChunkyPNG::Color.rgb(0, 0, 0))

  if r > 2
    r = Integer(r * 0.75)
    draw_circle(png, x, y, r)
  end
end

png = ChunkyPNG::Image.new(180, 180, ChunkyPNG::Color.rgb(255, 255, 255))
draw_circle(png, 90, 90, 90)
png.save('tunnel.png', :interface => true)

# Twice
#
def draw_circle(png, x, y, r)
  png.circle(x, y, r, ChunkyPNG::Color.rgb(0, 0, 0))

  if r > 2
    r = Integer(r * 0.75)
    draw_circle(png, x + r / 2, y, r / 2)
    draw_circle(png, x - r / 2, y, r / 2)
  end
end

png = ChunkyPNG::Image.new(320, 160, ChunkyPNG::Color.rgb(255, 255, 255))
draw_circle(png, 160, 80, 80)
png.save('twice.png', :interface => true)

# Fourth
#
def draw_circle(png, x, y, r)
  png.circle(x, y, r, ChunkyPNG::Color.rgb(0, 0, 0))

  if r > 2
    r = Integer(r * 0.75)
    draw_circle(png, x + r / 2, y, r / 2)
    draw_circle(png, x - r / 2, y, r / 2)
    draw_circle(png, x, y + r / 2, r / 2)
    draw_circle(png, x, y - r / 2, r / 2)
  end
end

png = ChunkyPNG::Image.new(640, 640, ChunkyPNG::Color.rgb(255, 255, 255))
draw_circle(png, 320, 320, 320)
png.save('fourth.png', :interface => true)