require "spec_helper"

describe ApplicationController do
  describe "#home" do
    it "renders the index template" do
      get :home
      expect(response).to render_template("home")
    end
  end
end
