require "spec_helper"

describe "layouts/application.html.haml" do
  before  { render }
  subject { rendered }

  it { should have_css "a[href='#{users_path}']", text: "Users"}
  it { should have_css "a[href='#{products_path}']", text: "Products"}
end
