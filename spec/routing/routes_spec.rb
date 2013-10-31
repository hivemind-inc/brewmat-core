require 'spec_helper'

describe "routing" do
  describe "ApplicationController" do
    it "routes GET / to hit application#index" do
      expect(get: "/").to route_to(controller: "application", action: "index")
    end
  end
end