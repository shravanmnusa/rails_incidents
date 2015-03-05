require 'rails_helper'

RSpec.describe "incidents/new", type: :view do
  before(:each) do
    assign(:incident, Incident.new(
      :issue => "MyString",
      :env => "MyString",
      :region => "MyString",
      :description => "MyText",
      :rootcause => "MyText",
      :resolution => "MyText"
    ))
  end

  it "renders new incident form" do
    render

    assert_select "form[action=?][method=?]", incidents_path, "post" do

      assert_select "input#incident_issue[name=?]", "incident[issue]"

      assert_select "input#incident_env[name=?]", "incident[env]"

      assert_select "input#incident_region[name=?]", "incident[region]"

      assert_select "textarea#incident_description[name=?]", "incident[description]"

      assert_select "textarea#incident_rootcause[name=?]", "incident[rootcause]"

      assert_select "textarea#incident_resolution[name=?]", "incident[resolution]"
    end
  end
end
