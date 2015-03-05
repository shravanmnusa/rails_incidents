require 'rails_helper'

RSpec.describe "incidents/index", type: :view do
  before(:each) do
    assign(:incidents, [
      Incident.create!(
        :issue => "Issue",
        :env => "Env",
        :region => "Region",
        :description => "MyText",
        :rootcause => "MyText",
        :resolution => "MyText"
      ),
      Incident.create!(
        :issue => "Issue",
        :env => "Env",
        :region => "Region",
        :description => "MyText",
        :rootcause => "MyText",
        :resolution => "MyText"
      )
    ])
  end

  it "renders a list of incidents" do
    render
    assert_select "tr>td", :text => "Issue".to_s, :count => 2
    assert_select "tr>td", :text => "Env".to_s, :count => 2
    assert_select "tr>td", :text => "Region".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
