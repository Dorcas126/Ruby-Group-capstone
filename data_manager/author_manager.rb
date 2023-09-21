require 'json'
require_relative '../classes/Game/author'

class AuthorManager
  DATA_FILE = 'JSON/'.freeze

  def load_authors
    return [] unless File.exist?("#{DATA_FILE}author.json")

    author_data = JSON.parse(File.read("#{DATA_FILE}author.json"))
    authors = []
    author_data['Authors'].map { |data| authors << Author.new(data['first_name'], data['last_name']) }
    authors
  end
end
