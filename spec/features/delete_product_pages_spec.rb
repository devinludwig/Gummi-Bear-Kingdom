require 'rails_helper'

describe "the delete a product process" do
  it "deletes a product" do
    product = Product.create(:name => "Green Gummy", :cost => 2.99, :origin => "Siam")
    visit product_path(product.id)
    click_on "Delete Product"
    expect(page).to_not have_content "Green Gummy"
  end
end
