class BookmailerMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.bookmailer_mailer.book_created.subject
  #
  def book_created
    @user = params[:user]
    @book = params[:book]
    @greeting = "Hi"
    attachments['book logo.jpg'] = File.read('app/assets/images/book logo.jpg')
    mail(
      from:"Support@books.com",
      to: User.first.email,
      cc: User.all.pluck(:email),
      bcc: "haider@books.com",
      subject: "New Book is Added on MYBOOKS"
    )
     end
end
