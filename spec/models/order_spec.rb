require 'spec_helper'

describe Order do
  it { should belong_to :user }
  it { should have_many :products }
end
