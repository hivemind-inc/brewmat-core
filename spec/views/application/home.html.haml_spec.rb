require "spec_helper"

describe "application/home.html.haml" do
  before { render }

  it { expect(rendered).to have_css "h1", text: "Welcome Home. Buy some coffee."}
end
