class Button  
  def initialize(label_text, x, y, foreground_color)
    @label_text = label_text
    @x = x
    @y = y
    @foreground_color = foreground_color
  end
end

def is_dark_mode
  true
end

def dark_mode(label_text, x, y, darker_foreground, hex_code)
  paint(label_text, x, y, darker_foreground, hex_code)
end

def light_mode(label_text, x, y, lighter_foreground, hex_code)
  paint(label_text, x, y, lighter_foreground, hex_code)
end

button = Button.new("Submit", 15, 25, 252525)

def draw_button(button)
  if is_dark_mode()
    # darken foreground color for dark mode
    dark_mode(button.label_text, button.x, button.y, button.foreground_color - 10, '#111111')
  else
    # lighten foreground color for non-dark mode
    light_mode(paint(button.label_text, button.x, button.y, button.foreground_color + 10, '#E0E0E0'))
  end
end