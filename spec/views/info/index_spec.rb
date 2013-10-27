require 'spec_helper'

describe 'info/index' do

  before(:each) do
    render
  end

  it "should render some titles (e.g. it exists)" do
    expect(rendered).to include("We Build Coffee.")
    expect(rendered).to include("What's on the Menu?")
    expect(rendered).to include("Coffee that ACTUALLY Tastes Good.")
    expect(rendered).to include("Plus, it's Painlessly Simple to Get.")
  end
end