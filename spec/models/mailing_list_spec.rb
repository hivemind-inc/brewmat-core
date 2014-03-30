require 'spec_helper'

describe MailingList do
  context 'valid email address' do
    it { MailingList.new(email: "bananas@food.com").should be_valid }
  end

  context 'invalid email address' do
    it { MailingList.new().should_not be_valid }
    it { MailingList.new(email: "bananas").should_not be_valid }
    it { MailingList.new(email: "(&A*(^A!&@").should_not be_valid }
  end
end