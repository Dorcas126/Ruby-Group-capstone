class Label
  attr_reader :id, :items, :title, :color

  def initialize(title, color, _id = SecureRandom.uuid)
    @id = SecureRandom.uuid
    @items = []
    @title = title
    @color = color
  end

  def add_item(item)
    @items << item
    item.label = self
  end
end
