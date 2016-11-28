class Library

  def initialize(books)
    @books = books
  end

  def listing_method()
    return @books
  end

  def book_details(book_name)
    return @books[book_name]
  end

  def add_new_book(new_book)
    key = new_book
    value = { student_name: "", date: "" }
    new_hash = { key => value }
    return @books.merge!(new_hash)
     # @books[new_book] = { student_name: "", date: "" } did not work
     # @books.store(key, value) did not work
  end

  def rent_out_book(new_book, student, due_date)
    key = new_book
    value = { student_name: student, date: due_date}
    new_hash = { key => value }
    return @books.merge!(new_hash)
  end

end