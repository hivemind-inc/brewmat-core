require 'spec_helper'

describe 'bios/_erg' do
  before(:each) do
    render
  end

  it "should have a bio image" do
    rendered.should have_css "img[src='/assets/bios/erg.jpg']"
  end

  it "should have some titles" do
    rendered.should have_content "Business Specialist"
    rendered.should have_content "Elijah Gartin"
  end

  it "should have contact info" do
    rendered.should have_css "a[href='mailto:elijah@grndz.com']"
  end
end