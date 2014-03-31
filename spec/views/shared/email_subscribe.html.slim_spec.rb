require 'spec_helper'

describe 'shared/_email_subscribe.html.slim' do
  before { render }

  it { rendered.should have_content "Stay up to date on all things coffee." }
  it { rendered.should have_css "input#email" }
  it { rendered.should have_css "input[value='Submit']" }
end