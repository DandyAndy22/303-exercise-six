class Button  
  def initialize(label_text, x, y, foreground_color)
    @label_text = label_text
    @x = x
    @y = y
    @foreground_color = foreground_color
  end

  def dim_foreground
    @foreground_color - 10
  end

  def brighten_foreground
    @foreground_color + 10
  end
end

def is_dark_mode
  true
end

def dark_mode(button)
  paint(button.label_text, button.x, button.y, button.dim_foreground, '#111111')
end

def light_mode(button)
  paint(button.label_text, button.x, button.y, button.brighten_foreground, '#E0E0E0')
end

button = Button.new("Submit", 15, 25, 252525)

def draw_button(button)
  is_dark_mode() ? dark_mode(button) : light_mode(button)
end