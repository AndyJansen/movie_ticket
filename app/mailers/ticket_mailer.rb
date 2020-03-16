class TicketMailer < ApplicationMailer
  default from: 'notifications@example.com'
 
  def welcome_email
    @ticket = Ticket.find_by(params[:id])
    @user = User.find_by(params[:id])
    mail(to: @user.email, subject: 'Movie Tickets')
  end
end
