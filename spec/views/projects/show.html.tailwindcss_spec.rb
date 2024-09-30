require 'rails_helper'

RSpec.describe "projects/show", type: :view do
  before(:each) do
    assign(:project, Project.create!(
      name: "Name",
      vcs_provider: "Vcs Provider",
      vcs_identifier: "Vcs Identifier",
      webhook_url: "Webhook Url",
      settings: "",
      user: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Vcs Provider/)
    expect(rendered).to match(/Vcs Identifier/)
    expect(rendered).to match(/Webhook Url/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
