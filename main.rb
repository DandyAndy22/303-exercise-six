class Button  
  def initialize(label_text, x, y, foreground_color)
    @label_text = label_text
    @x = x
    @y = y
    @foreground_color = foreground_color
  end
end

button = Button.new("Submit", 15, 25, 252525)

def draw_button(button, is_dark_mode)
  if is_dark_mode
    # darken foreground color for dark mode
    paint(button.label_text, button.x, button.y, button.foreground_color - 10, '#111111')
  else
    # lighten foreground color for non-dark mode
    paint(button.label_text, button.x, button.y, button.foreground_color + 10, '#E0E0E0')
  end
end