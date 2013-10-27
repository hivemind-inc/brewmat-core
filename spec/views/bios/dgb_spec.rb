require 'spec_helper'

describe 'bios/_dgb' do
  before(:each) do
    render
  end

  it "should have a bio image" do
    rendered.should have_css "img[src='/assets/bios/dgb.jpg']"
  end

  it "should have some titles" do
    rendered.should have_content "Dedicated Developer"
    rendered.should have_content "Devin Brown"
  end

  it "should have contact info" do
    rendered.should have_css "a[href='mailto:devin@grndz.com']"
  end
end