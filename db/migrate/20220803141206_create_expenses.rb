class CreateExpenses < ActiveRecord::Migration[7.0]
  def change
    create_table :expenses do |t|
      t.string :category
      t.date :date
      t.references :user, null: false, foreign_key: true
      t.string :amount
      t.string :currency, default: "USD"

      t.timestamps
    end
  end
end
