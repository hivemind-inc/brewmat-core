require "spec_helper"

describe "application/home.html.haml" do
  let(:products) { FactoryGirl.create_list(:product, 3) }

  before(:each) do
    assign(:products, products)
    render
  end

  subject { rendered }

  it { should have_css "h1", text: "Welcome Home. Buy some coffee."}
  it { should have_css "a[href='#{users_path}']", text: "Users"}
  it { should have_css "a[href='#{products_path}']", text: "Products"}

  it { should have_css "a[href='#{product_path(products.first)}']", text: products.first.name }
  it { should have_css "a[href='#{product_path(products.second)}']", text: products.second.name }
  it { should have_css "a[href='#{product_path(products.third)}']", text: products.third.name }
end
