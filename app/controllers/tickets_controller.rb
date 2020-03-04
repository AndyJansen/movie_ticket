class TicketsController < ApplicationController
  def index
    
  end

  def show
    @tickets = Ticket.all
  end
end
