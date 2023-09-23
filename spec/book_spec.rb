require_relative '../classes/Book/book'

describe Book do
  describe '#can_be_archived?' do
    context 'Return Boolean based on age or cover condition' do
      it 'when the book is old enough or cover state is bad returns true' do
        book = Book.new('publisher', 'bad', '2002/01/01')
        expect(book.can_be_archived?).to eq(true)
      end

      it 'when the book is old enough but cover state is good returns false' do
        book = Book.new('publisher', 'good', '2002/01/01')
        expect(book.can_be_archived?).to eq(false)
      end

      it 'when the book is new but cover state is bad returns true' do
        book = Book.new('publisher', 'bad', '2022/01/01')
        expect(book.can_be_archived?).to eq(true)
      end
    end
  end

  describe '#Should validate user input' do
    context 'when user inputs publisher name' do
      it 'returns correct publisher' do
        book = Book.new('JK Publishers', 'bad', '2002/01/01')
        expect(book.publisher).to eq('JK Publishers')
      end

      it 'when user inputs cover\'s state condition returns correct cover\'s state' do
        book = Book.new('JK Publishers', 'bad', '2002/01/01')
        expect(book.cover_state).to eq('bad')
      end

      it 'when user inputs published date returns correct published date' do
        book = Book.new('JK Publishers', 'bad', '2002/01/01')
        expected_date = Date.parse('2002/01/01')
        expect(book.publish_date).to eq(expected_date)
      end
    end
  end
end
