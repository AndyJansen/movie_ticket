class Movie < ApplicationRecord
  has_many :tickets, dependent: :destroy


end
