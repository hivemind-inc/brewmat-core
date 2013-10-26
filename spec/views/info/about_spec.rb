require 'spec_helper'

describe 'info/about' do

  before(:each) do
    render
  end

  it "should render some titles" do
    expect(rendered).to include("About")
  end
end