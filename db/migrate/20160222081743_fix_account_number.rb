class FixAccountNumber < ActiveRecord::Migration
  def change
      rename_column :accounts, :account_nunber, :account_number
  end
end
