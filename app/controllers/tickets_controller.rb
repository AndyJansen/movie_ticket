class TicketsController < ApplicationController
  def index
    @tickets = Ticket.all
  end

  def show   
    @ticket = Ticket.find(params[:id])
  end

  def new
    @ticket = Ticket.new
  end

  def create
    @ticket = Ticket.new(ticket_params)

    @ticket.save
    redirect_to @ticket
  end


def destroy
  @ticket = Ticket.find(params[:id])
  @ticket.destroy
 
  redirect_to tickets_path
end

  private
  def ticket_params
    params.require(:ticket).permit(:name, :number, :cost, :card_number)
  end
end
