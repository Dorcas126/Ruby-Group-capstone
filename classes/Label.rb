class Label
    attr_reader :id, :title, :color, :items
    def initialize(title, color, items, id(Random.rand(10_0000)))
        @id = id
        @title = title
        @color = color
        @items = []
    end

    def add_item(item)
        @items << item
        item.label = self
    end
end