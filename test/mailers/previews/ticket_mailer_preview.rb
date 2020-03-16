# Preview all emails at http://localhost:3000/rails/mailers/ticket_mailer
class TicketMailerPreview < ActionMailer::Preview
  def welcome_email
    TicketMailer.with(user: User.first).welcome_email
  end
end
