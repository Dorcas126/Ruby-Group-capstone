require 'json'
require_relative '../classes/Book/label'

class LabelManager
  DATA_FOLDER = 'JSON/'.freeze

  def load_labels
    return [] unless File.exist?("#{DATA_FOLDER}label.json")

    data = JSON.parse(File.read("#{DATA_FOLDER}label.json"))
    labels = []
    data['Lables'].map { |label_data| labels << Label.new(label_data['title'], label_data['color']) }
    labels
  end
end
