require_relative '../classes/Book/label'

module LabelModule
 
  def list_labels
    if @labels.empty?
      puts 'Label list is empty'
    else
      @labels.each_with_index do |label, index|
        puts "Number: #{index + 1}, Title: #{label.title}, Color: #{label.color}"
      end
    end
  end
end
