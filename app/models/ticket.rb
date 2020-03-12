class Ticket < ApplicationRecord
  belongs_to :movie

  validates :card_number, numericality: { only_integer: true }
  before_save :ticket_cost

  def ticket_name
    self.movie.name
  end

  def self.made_from
    return "made in USA"
  end

  def made_from
    if self.cost > 5
      Ticket.made_from
    else  
      return "made in China"
    end
  end

  def title
    self.movie.name
  end

  def ticket_cost
    self.cost = self.movie.price * self.number
  end


end

