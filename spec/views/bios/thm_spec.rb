require 'spec_helper'

describe 'bios/_thm' do
  before(:each) do
    render
  end

  it "should have a bio image" do
    rendered.should have_css "img[src='/assets/bios/thm.jpg']"
  end

  it "should have some titles" do
    rendered.should have_content "Lovable Mascot"
    rendered.should have_content "Tater"
  end

  it "should have contact info" do
    rendered.should have_css "a[href='mailto:contact@grndz.com']"
  end
end