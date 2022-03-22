require 'test_helper'

class BookmailerMailerTest < ActionMailer::TestCase
  test "book_created" do
    mail = BookmailerMailer.book_created
    assert_equal "Book created", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
