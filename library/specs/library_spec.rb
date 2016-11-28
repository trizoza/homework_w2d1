require ('minitest/autorun')
require_relative ('../library')

class LibraryTest < MiniTest::Test

  def setup

    @books_hash = {
    "Lord of the rings" => { :student_name => "Peter", :date => "29/11/2016"}, "Batman" => {:student_name => "AndyG", :date => "30/11/2016"}, "Godfather" => {:student_name => "Mike", :date => "1/12/2016"}
    }

  end

  def test_listing_method
    library = Library.new(@books_hash)
    assert_equal(@books_hash, library.listing_method())
  end

  def test_book_details
    library = Library.new(@books_hash)
    book_call = library.book_details("Batman")
    assert_equal( {:student_name => "AndyG", :date => "30/11/2016"}, book_call)
  end

  def test_add_new_book
    library = Library.new(@books_hash)
    updated_library = library.add_new_book("On the road")
    assert_equal({ "Lord of the rings" => { :student_name => "Peter", :date => "29/11/2016"}, "Batman" => {:student_name => "AndyG", :date => "30/11/2016"}, "Godfather" => {:student_name => "Mike", :date => "1/12/2016"}, "On the road" => {:student_name => "", :date => ""}}, updated_library)
  end

  def test_rent_out_book
    library = Library.new(@books_hash)
    updated_library = library.rent_out_book("Lost world", "John", "12/12/2016")
    assert_equal({ "Lord of the rings" => { :student_name => "Peter", :date => "29/11/2016"}, "Batman" => {:student_name => "AndyG", :date => "30/11/2016"}, "Godfather" => {:student_name => "Mike", :date => "1/12/2016"}, "Lost world" => {:student_name => "John", :date => "12/12/2016"}}, updated_library)
  end

end