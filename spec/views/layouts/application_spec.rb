require 'spec_helper'

describe "layouts/application" do
  before(:each) do
    render
  end

  it "should have the correct page title" do
    title = "Grndz - Browse, Buy and Deliver. We bring coffee of all roasts and flavors right to your door."
    response.should have_content title
  end

  it "should render the google analytics partial" do
    response.should render_template "shared/_google_analytics"
  end
end