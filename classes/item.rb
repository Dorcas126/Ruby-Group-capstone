
require 'date'

# Item class
class Item
  attr_reader :publish_date, :archived, :id, :label

  def initialize(publish_date, archived, _id = SecureRandom.uuid)
    @id = SecureRandom.uuid
    @publish_date = Date.parse(publish_date)
    @archived = archived
  end

  def label=(label)
    @label = label
    label.add_item(self) unless label.items.include?(self)
  end

  def can_be_archived?
    Date.today.year - @publish_date.year > 10
  end

  private :can_be_archived?

  def move_to_archive
    @archived = true if can_be_archived?
  end
end
