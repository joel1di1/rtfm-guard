require 'rails_helper'

RSpec.describe "projects/edit", type: :view do
  let(:project) {
    Project.create!(
      name: "MyString",
      vcs_provider: "MyString",
      vcs_identifier: "MyString",
      webhook_url: "MyString",
      settings: "",
      user: nil
    )
  }

  before(:each) do
    assign(:project, project)
  end

  it "renders the edit project form" do
    render

    assert_select "form[action=?][method=?]", project_path(project), "post" do

      assert_select "input[name=?]", "project[name]"

      assert_select "input[name=?]", "project[vcs_provider]"

      assert_select "input[name=?]", "project[vcs_identifier]"

      assert_select "input[name=?]", "project[webhook_url]"

      assert_select "input[name=?]", "project[settings]"

      assert_select "input[name=?]", "project[user_id]"
    end
  end
end
