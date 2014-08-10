require "spec_helper"

describe ApplicationController do
  describe "#home" do
    it "renders the index template" do
      get :home
      expect(response).to render_template("home")
    end

    it "assigns all products as @products" do
      product = FactoryGirl.create(:product)
      get :home
      assigns(:products).should eq([product])
    end
  end
end
