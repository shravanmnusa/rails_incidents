require 'rails_helper'

RSpec.describe "incidents/show", type: :view do
  before(:each) do
    @incident = assign(:incident, Incident.create!(
      :issue => "Issue",
      :env => "Env",
      :region => "Region",
      :description => "MyText",
      :rootcause => "MyText",
      :resolution => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Issue/)
    expect(rendered).to match(/Env/)
    expect(rendered).to match(/Region/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
  end
end
