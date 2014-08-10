require 'spec_helper'

describe "contacts/new" do
  before(:each) do
    assign(:contact, stub_model(Contact,
      :street => "MyString",
      :unit => "MyString",
      :city => "MyString",
      :state => "MyString",
      :zip => 1
    ).as_new_record)
  end

  it "renders new contact form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", contacts_path, "post" do
      assert_select "input#contact_street[name=?]", "contact[street]"
      assert_select "input#contact_unit[name=?]", "contact[unit]"
      assert_select "input#contact_city[name=?]", "contact[city]"
      assert_select "input#contact_state[name=?]", "contact[state]"
      assert_select "input#contact_zip[name=?]", "contact[zip]"
    end
  end
end
