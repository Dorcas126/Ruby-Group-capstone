class Book
    attr_reader :publisher, :cover_state

    def initialize(publish_date, publisher, cover_state, id = Random.rand(10_0000))
        super(publish_date, id, false)
        @publisher = publisher
        @cover_state = cover_state
    end

    def can_be_archived?
        super || cover_state == "bad"
    end
end