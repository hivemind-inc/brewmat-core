require "spec_helper"

describe SubscriptionsController do
  describe "routing" do

    it "routes to #new" do
      get("/subscriptions/new").should route_to("subscriptions#new")
    end

    it "routes to #create" do
      post("/subscriptions").should route_to("subscriptions#create")
    end
  end
end
