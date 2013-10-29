require 'spec_helper'

describe "shared/_navbar" do

  describe "nav changes based on current action" do
    it "should be 'active' when on application#index" do
      params[:controller] = "application"
      params[:action]     = "index"
      render
      rendered.should have_css "li.active a[href='#{root_path}']"
    end

    it "should be 'active' when on application#about_path" do
      params[:controller] = "application"
      params[:action]     = "about_page"
      render
      rendered.should have_css "li.active a[href='#{about_path}']"
    end

    it "should be 'active' when on posts#index" do
      params[:controller] = "posts"
      params[:action]     = "index"
      render
      rendered.should have_css "li.active a[href='http://blog.grndz.com']"
    end
  end

  describe "all users" do
    before(:each) do
      render
    end

    it "should have the Grndz logo that links to the home page" do
      rendered.should have_css "a[href='/']"
      rendered.should have_css "span.glyphicon.glyphicon-leaf"
    end

    it "should have a link to 'Home'" do
      rendered.should have_css "a[href='/']"
      rendered.should have_content "Home"
    end

    it "should have a link to 'About'" do
      rendered.should have_css "a[href='#{about_path}']"
      rendered.should have_content "About"
    end

    it "should have a link to 'Blog'" do
      rendered.should have_css "a[href='http://blog.grndz.com']"
      rendered.should have_content "Blog"
    end

    it "should NOT open the blog site in a new tab" do
      rendered.should_not have_css "a[target='_blank']"
    end
  end
end