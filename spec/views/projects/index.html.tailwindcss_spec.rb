require 'rails_helper'

RSpec.describe "projects/index", type: :view do
  before(:each) do
    assign(:projects, [
      Project.create!(
        name: "Name",
        vcs_provider: "Vcs Provider",
        vcs_identifier: "Vcs Identifier",
        webhook_url: "Webhook Url",
        settings: "",
        user: nil
      ),
      Project.create!(
        name: "Name",
        vcs_provider: "Vcs Provider",
        vcs_identifier: "Vcs Identifier",
        webhook_url: "Webhook Url",
        settings: "",
        user: nil
      )
    ])
  end

  it "renders a list of projects" do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Vcs Provider".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Vcs Identifier".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Webhook Url".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end
