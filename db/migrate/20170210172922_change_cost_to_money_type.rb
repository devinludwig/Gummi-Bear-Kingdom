class ChangeCostToMoneyType < ActiveRecord::Migration[5.0]
  def change
    remove_column(:products, :cost, :float)
    add_column(:products, :cost, :money)
  end
end
