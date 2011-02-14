require 'csv'
require_relative 'books'

class CSVReader
  def initialize
    @books_in_stock = []
  end
  def load_csv(csv_file_name)
    CSV.foreach(csv_file_name, headers: true) do |row|
      @books_in_stock << BooksInStock.new(row['ISBN'], row['Price'])
    end
  end
  def total_value
    sum = 0.0
    @books_in_stock.each {|book| sum += book.price }
    sum
  end
  def count_by_isbn
    numbers = Hash.new(0)
    @books_in_stock.each {|book| numbers[book.isbn] += 1}
    numbers
  end
end

