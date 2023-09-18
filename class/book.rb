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
    super(publish_date, id, false)
    @publisher = publisher
    @cover_state = cover_state
  end

  def can_be_archived?
    super || cover_state == 'bad'
  end

  def to_json(*args)
    {
      'id' => @id,
      'publish_date' => @publish_date,
      'publisher' => @publisher,
      'cover_state' => @cover_state,
      'label' => @label
    }.to_json(*args)
  end
end
