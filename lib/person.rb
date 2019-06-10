require 'pry'
class Person
  attr_accessor :name, :birthday, :hair_color, :eye_color, :height, :weight, :handed, :complexion, :t_shirt_size, :wrist_size, :glove_size, :pant_length, :pant_width

  # attributes = {
  #   name:,
  #   birthday:,
  #   hair_color:,
  #   eye_color:,
  #   height:,
  #   weight:,
  #   handed:,
  #   complexion:,
  #   t_shirt_size:,
  #   wrist_size:,
  #   glove_size:,
  #   pant_length:,
  #   pant_width:
  # }

  def initialize(attributes)
    # binding.pry
    # attributes is pulled from attr_accessor, not the hash 'attributes'
    attributes.each {|key, value| self.send(("#{key}="), value)}
  end
end
