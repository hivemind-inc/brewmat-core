require 'spec_helper'

describe "contacts/edit" do
  before(:each) do
    @contact = assign(:contact, stub_model(Contact,
      :street => "MyString",
      :unit => "MyString",
      :city => "MyString",
      :state => "MyString",
      :zip => 1
    ))
  end

  it "renders the edit contact form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", contact_path(@contact), "post" do
      assert_select "input#contact_street[name=?]", "contact[street]"
      assert_select "input#contact_unit[name=?]", "contact[unit]"
      assert_select "input#contact_city[name=?]", "contact[city]"
      assert_select "input#contact_state[name=?]", "contact[state]"
      assert_select "input#contact_zip[name=?]", "contact[zip]"
    end
  end
end
