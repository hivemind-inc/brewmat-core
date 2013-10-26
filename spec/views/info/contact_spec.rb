require 'spec_helper'

describe 'info/contact' do

  before(:each) do
    render
  end

  it "should render some titles" do
    expect(rendered).to include("Contact")
  end
end