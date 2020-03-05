class Ticket < ApplicationRecord
  belongs_to :movie
  # def initialize (name, number, cost, card_number)
  #   @name = name
  #   @number = number
  #   @cost = cost
  #   @card_number = car_number
  # end

  validates :name, presence: true
  # validates :number, presence: true
end
