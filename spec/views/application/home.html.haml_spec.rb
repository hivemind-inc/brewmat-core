require "spec_helper"

describe "application/home.html.haml" do
  before  { render }
  subject { rendered }

  it { should have_css "h1", text: "Welcome Home. Buy some coffee."}
  it { should have_css "a[href='#{users_path}']", text: "Users"}
  it { should have_css "a[href='#{products_path}']", text: "Products"}
end
