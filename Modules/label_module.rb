require_relative '../classes/Book/label'

module LabelModule
  def list_labels
    if @labels.empty?
      puts "\n"
      puts 'There are no labels' .colorize(:red)
    else
      @labels.each_with_index do |label, i|
        puts "\n"
        puts "Number: #{i + 1}, title: #{label.title}, color: #{label.color}"
      end
    end
  end
end
