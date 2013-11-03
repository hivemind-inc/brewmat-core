require 'spec_helper'

describe 'layouts/index' do

  before(:each) do
    render
  end

  it "should have a title" do
    rendered.should have_content "We Build Coffee."
  end

  it "should have a subtitle" do
    rendered.should have_content "A coffee marketplace that you can actually understand."
  end
end