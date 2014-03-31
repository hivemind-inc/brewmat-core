require 'spec_helper'

describe 'application/splash.html.slim' do
  before { render }

  it { rendered.should have_css "a[href='https://www.facebook.com/grndz']" }
  it { rendered.should have_css "a[href='https://twitter.com/grndzbrew']" }
  it { rendered.should have_content "grndz" }
  it { rendered.should have_content "brew with confidence." }
  it { rendered.should render_template('shared/_email_subscribe') }
end