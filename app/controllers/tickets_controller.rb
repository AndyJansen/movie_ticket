class TicketsController < ApplicationController
  def index
    @tickets = Ticket.all
  end

  def show   
    @ticket = Ticket.find(params[:id])
    @title = @ticket.title
    @tcost = @ticket.cost
  end

  def new
    @ticket = Ticket.new
  end

  def create
    @ticket = Ticket.new(ticket_params)
    

    respond_to do |format|
      if @ticket.save
        # Tell the UserMailer to send a welcome email after save
        TicketMailer.with(ticket: @ticket).welcome_email.deliver_later
 
        format.html { redirect_to(@ticket, notice: 'Ticket was successfully created.') }
        format.json { render json: @ticket, status: :created, location: @ticket }
      else
        format.html { render action: 'new' }
        format.json { render json: @ticket.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @ticket = Ticket.find(params[:id])
    @ticket.destroy
  
    redirect_to tickets_path
  end

  private
  def ticket_params
    params.require(:ticket).permit(:movie_id, :name, :number, :cost, :card_number)
  end
end
