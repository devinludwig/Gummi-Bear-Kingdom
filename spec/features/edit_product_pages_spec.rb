require 'rails_helper'

describe "the product editing process" do
  it "edits a product" do
    product = Product.create(:name => "Green Gummy", :cost => 2.99, :origin => "Siam")
    visit product_path(product.id)
    click_on "Edit Product"
    fill_in "Product", :with => "Red Gummy"
    click_on "Update Product"
    expect(page).to have_content "Red Gummy"
  end
end
