require 'rails_helper'

RSpec.describe "knowledges/show", type: :view do
  before(:each) do
    assign(:knowledge, Knowledge.create!(
      regexp: "Regexp",
      user: nil,
      description: "MyText",
      documentation_link: "Documentation Link",
      impact_level: 2,
      solution_hint: "MyText",
      path_pattern: "Path Pattern"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Regexp/)
    expect(rendered).to match(//)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Documentation Link/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Path Pattern/)
  end
end
