require 'spec_helper'

describe "routing" do
  describe "ApplicationController" do
    it "routes GET / to hit application#index" do
      expect(get: "/").to route_to(controller: "application", action: "index")
    end
    it "routes GET /about to hit application#about_page" do
      expect(get: "/about").to route_to(controller: "application", action: "about_page")
    end

    it "routes GET /contact to hit application#contact_page" do
      expect(get: "/contact").to route_to(controller: "application", action: 'contact_page')
    end
  end
end