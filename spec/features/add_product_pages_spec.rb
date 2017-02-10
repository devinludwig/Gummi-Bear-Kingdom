require 'rails_helper'

describe "the product addition process" do
  it "add a new product" do
    visit products_path
    click_link 'Add New Product'
    fill_in 'Product', :with => 'Red Gummi'
    fill_in 'Country of Origin', :with => 'Sudan'
    fill_in 'Cost', :with => '9.99'
    click_on 'Create Product'
    expect(page).to have_content("Products")
  end

  it "gives an error when no nothing is entered" do
    visit new_product_path
    click_on 'Create Product'
    expect(page).to have_content 'errors'
  end
end
