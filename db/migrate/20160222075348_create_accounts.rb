class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.integer :account_nunber
      t.references :supplier, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
