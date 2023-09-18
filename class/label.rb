class Label
  
    attr_reader :id, :title, :color, :items
  
    def initialize(title, color, items = [], id = Random.rand(100_000))
      @id = id
      @title = title
      @color = color
      @items = items
    end
  
    def add_item(item)
      @items << item
      item.label = self # Set the label attribute on the item
    end
  end
  
  class Book
    attr_accessor :id, :publish_date, :publisher, :cover_state, :label
  
    def initialize(publish_date, publisher, cover_state)
      @id = Random.rand(100_000)
      @publish_date = publish_date
      @publisher = publisher
      @cover_state = cover_state
      @label = nil
    end
  end