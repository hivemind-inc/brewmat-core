require 'spec_helper'

describe 'info/index' do

  before(:each) do
    render
  end

  it "should render some titles (e.g. it exists)" do
    expect(rendered).to include("We Build Coffee.")
    expect(rendered).to include("Coffee buying made easy.")
    expect(rendered).to include("Additional Resources")
  end

  it "should have the banner image visible" do
    rendered.should have_css "img[src='/assets/index/banner.jpg']"
  end

  it "should have a link to the about page" do
    rendered.should have_content "About Us"
    rendered.should have_css "a[href='/about']"
  end

  it "should have a link to the blog site" do
    rendered.should have_content "Grndz Blog"
    rendered.should have_css "a[href='http://blog.grndz.com']"
  end

  it "should have a contact us mailto link" do
    rendered.should have_content "Contact Us"
    rendered.should have_css "a[href='mailto:contact@grndz.com']"
  end
end