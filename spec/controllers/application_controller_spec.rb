require 'spec_helper'

describe ApplicationController do
  describe "#email_subscribe" do

    subject { response }

    context "with a valid email" do
      before { get :email_subscribe, { email: "bob@cat.com" } }

      it { subject.body.should be }
      it { JSON.parse(subject.body)["success"].should be_true }
      it { subject.status.should eq(200) }
    end

    context "with a duplicate email" do
      before { get :email_subscribe, { email: "first@cat.com" } }
      before { get :email_subscribe, { email: "first@cat.com" } }

      it { subject.body.should be }
      it { JSON.parse(subject.body)["success"].should be_true }
      it { subject.status.should eq(200) }
    end

    context "with an invalid email" do
      before { get :email_subscribe, { email: "halfassed" } }

      it { subject.body.should be }
      it { JSON.parse(subject.body)["success"].should be_false }
      it { subject.status.should eq(200) }
    end
  end

  describe "#email_unsubscribe" do

  end

  describe "#splash" do
    before { get :splash }

    subject { response }

    it { subject.should render_template(:splash)}
  end
end