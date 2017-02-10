class AddProductsTable < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.column :name, :string
      t.column :origin, :string
      t.column :cost, :float
    end
  end
end
