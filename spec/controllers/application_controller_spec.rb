require 'spec_helper'

describe ApplicationController do
  describe "GET #index" do
    it "should render the index" do
      get :index
      expect(response).to render_template("layouts/index")
    end
  end
end