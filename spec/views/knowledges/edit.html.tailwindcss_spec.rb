require 'rails_helper'

RSpec.describe "knowledges/edit", type: :view do
  let(:knowledge) {
    Knowledge.create!(
      regexp: "MyString",
      user: nil,
      description: "MyText",
      documentation_link: "MyString",
      impact_level: 1,
      solution_hint: "MyText",
      path_pattern: "MyString"
    )
  }

  before(:each) do
    assign(:knowledge, knowledge)
  end

  it "renders the edit knowledge form" do
    render

    assert_select "form[action=?][method=?]", knowledge_path(knowledge), "post" do

      assert_select "input[name=?]", "knowledge[regexp]"

      assert_select "input[name=?]", "knowledge[user_id]"

      assert_select "textarea[name=?]", "knowledge[description]"

      assert_select "input[name=?]", "knowledge[documentation_link]"

      assert_select "input[name=?]", "knowledge[impact_level]"

      assert_select "textarea[name=?]", "knowledge[solution_hint]"

      assert_select "input[name=?]", "knowledge[path_pattern]"
    end
  end
end
