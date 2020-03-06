class AddForeignKeyToTickets < ActiveRecord::Migration[6.0]
  def change
    add_column :tickets, :movie_id, :integer
    add_foreign_key :tickets, :movies
  end
end
