require_relative '../classes/item'
require_relative '../classes/Book/label'

describe Book do
  before :each do
    @label = Label.new('title', 'color')
  end

  context 'test add item method' do
    it 'should return an array of item' do
      item = Item.new('2002/01/01', archived: true)
      @label.add_item(item)
      expect(@label.items).to eq([item])
    end
  end

  context 'test user inputs' do
    it 'should return correct value of title' do
      @label = Label.new('label 1', 'red')
      expect(@label.title).to eq('label 1')
    end

    it 'should return correct value of color' do
      @label = Label.new('label 1', 'red')
      expect(@label.color).to eq('red')
    end
  end
end
