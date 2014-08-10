require 'spec_helper'

describe User do
  it { should have_many :species }
  it { should have_many :contacts }
  it { should have_many :orders }
end
