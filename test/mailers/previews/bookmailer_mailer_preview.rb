# Preview all emails at http://localhost:3000/rails/mailers/bookmailer_mailer
class BookmailerMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/bookmailer_mailer/book_created
  def book_created
    BookmailerMailer.with(user: User.first, book: Book.first).book_created
  end

end
