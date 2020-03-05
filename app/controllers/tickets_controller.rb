class TicketsController < ApplicationController
  def index
    @tickets = Ticket.all
  end

  def show   
     @ticket = Ticket.find(params[:id])
  end

  def create
    @ticket = Ticket.new(ticket_params)

    @ticket.save
    redirect_to @ticket
  end

  def save

  end
  private
  def ticket_params
    params.require(:ticket).permit(:name, :number)
  end
end
