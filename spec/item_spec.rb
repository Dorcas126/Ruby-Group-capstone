require_relative '../classes/item'
require_relative '../classes/Game/author'
require_relative '../classes/Book/label'
require_relative '../classes/Music/genre'

describe Item do
  before :each do
    @item = Item.new('2020-01-01')
  end

  context 'testing methods' do
    it 'test genre method' do
      genre = Genre.new('Rock')
      @item.genre = genre
      expect(genre.items).to eq([@item])
    end

    it 'test author method' do
      author = Author.new('George', 'Martin')
      @item.author = author
      expect(author.items).to eq([@item])
    end

    it 'test label method' do
      label = Label.new('The Shawshank Redemption', 'Red')
      @item.label = label
      expect(label.items).to eq([@item])
    end

    it 'test of can_be_archived? method' do
      expect(@item.send(:can_be_archived?)).to eq(false)
    end
  end

  context '#Should validate user input' do
    it 'returns correct published date' do
      expected_date = Date.parse('2020-01-01')
      expect(@item.publish_date).to eq(expected_date)
    end

    it 'returns correct state of archived' do
      @item = Item.new('2019-01-01', archived: true)
      expect(@item.archived).to eq(true)
    end
  end
end
