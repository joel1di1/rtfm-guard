require 'rails_helper'

RSpec.describe "projects/new", type: :view do
  before(:each) do
    assign(:project, Project.new(
      name: "MyString",
      vcs_provider: "MyString",
      vcs_identifier: "MyString",
      webhook_url: "MyString",
      settings: "",
      user: nil
    ))
  end

  it "renders new project form" do
    render

    assert_select "form[action=?][method=?]", projects_path, "post" do

      assert_select "input[name=?]", "project[name]"

      assert_select "input[name=?]", "project[vcs_provider]"

      assert_select "input[name=?]", "project[vcs_identifier]"

      assert_select "input[name=?]", "project[webhook_url]"

      assert_select "input[name=?]", "project[settings]"

      assert_select "input[name=?]", "project[user_id]"
    end
  end
end
