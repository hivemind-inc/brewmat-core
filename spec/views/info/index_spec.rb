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

  it "should have the banner images visible" do
    rendered.should have_css "img[src='/assets/index/0.jpg']"
    rendered.should have_css "img[src='/assets/index/1.jpg']"
    rendered.should have_css "img[src='/assets/index/2.jpg']"
  end

  it "should not have banner images visible on mobile devices" do
    pending "don't know how to mock the 'browser.mobile?' object / method"
    rendered.should_not have_css "img[src='/assets/index/0.jpg']"
    rendered.should_not have_css "img[src='/assets/index/1.jpg']"
    rendered.should_not have_css "img[src='/assets/index/2.jpg']"
  end
end