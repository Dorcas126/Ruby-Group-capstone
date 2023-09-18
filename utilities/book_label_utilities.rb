require_relative '../classes/book'
require_relative '../classes/label'

Module BookLabelUtilities 
def create_label
p "Enter the label title: "
title = gets.chomp
p "Enter the color: "
color = gets.chomp

Label.new(title, color)
end