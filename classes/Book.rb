class Book
    attr_reader :publisher, :cover_state
     
    def initialize(publisher, cover_state, id = Random.rand(10_0000))
        super(id, false)
        @publisher = publisher
        @cover_state = cover_state
    end

    def can_be_archive?
        super || cover_state == "bad"
    end
end