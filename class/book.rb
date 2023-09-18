class Publication
  
    attr_reader :publish_date, :id
  
    def initialize(publish_date, id, archived)
      @publish_date = publish_date
      @id = id
      @archived = archived
    end
  
    def can_be_archived?
      @archived
    end
  end
  
  class Book < Publication
    attr_reader :publisher, :cover_state
  
    def initialize(publish_date, publisher, cover_state, id = Random.rand(100_000))
      super(publish_date, id, false) # Call the parent class's initialize method
      @publisher = publisher
      @cover_state = cover_state
    end
  
    def can_be_archived?
      super || cover_state == 'bad'
    end
  end
  