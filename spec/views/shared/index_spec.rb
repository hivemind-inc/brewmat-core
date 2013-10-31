require 'spec_helper'

describe 'layouts/index' do

  before(:each) do
    render
  end

  it "should render some titles (e.g. it exists)" do
    expect(rendered).to include("The Promise.")
    expect(rendered).to include("A coffee selection that you can understand.")
    expect(rendered).to include("Coffee is delivered directly to your door.")
    expect(rendered).to include("A seriously dependable coffee subscription service.")
  end
end