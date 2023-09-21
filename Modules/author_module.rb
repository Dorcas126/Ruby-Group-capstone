require_relative '../classes/Game/author'

module AuthorModule
  def list_authors
    if @authors.empty?
      puts 'There are no authors'
    else
      @authors.each_with_index do |author, i|
        puts "#{i + 1}) First name: #{author.first_name}, Last name: #{author.last_name}"
      end
    end
  end
end
