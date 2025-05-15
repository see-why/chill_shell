class CreateEarnings < ActiveRecord::Migration[8.0]
  def change
    create_table :earnings do |t|
      t.references :employee, null: false, foreign_key: true
      t.date :earning_date
      t.decimal :amount

      t.timestamps
    end
  end
end
