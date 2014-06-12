class AddCreditCardToUsers < ActiveRecord::Migration
  def change
    add_column :users, :credit_card, :string
  end
end
