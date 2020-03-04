class CreateTickets < ActiveRecord::Migration[6.0]
  def change
    create_table :tickets do |t|
      t.string :name
      t.integer :number
      t.integer :cost

      t.timestamps
    end
  end
end
