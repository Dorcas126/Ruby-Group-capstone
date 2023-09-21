require_relative 'item'
require 'date'

class Book < Item
  attr_accessor :publish_date, :publisher, :cover_state

  def initialize(publish_date, publisher, cover_state)
    super(publish_date)
    @publisher = publisher
    @cover_state = cover_state
  end

  def can_be_archived?
    super == false || @cover_state == 'bad'
  end
end
