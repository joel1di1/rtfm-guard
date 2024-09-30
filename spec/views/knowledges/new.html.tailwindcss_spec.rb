# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'knowledges/new' do
  before do
    assign(:knowledge, Knowledge.new(
                         regexp: 'MyString',
                         user: nil,
                         description: 'MyText',
                         documentation_link: 'MyString',
                         impact_level: 1,
                         solution_hint: 'MyText',
                         path_pattern: 'MyString'
                       ))
  end

  it 'renders new knowledge form' do
    render

    assert_select 'form[action=?][method=?]', knowledges_path, 'post' do
      assert_select 'input[name=?]', 'knowledge[regexp]'

      assert_select 'input[name=?]', 'knowledge[user_id]'

      assert_select 'textarea[name=?]', 'knowledge[description]'

      assert_select 'input[name=?]', 'knowledge[documentation_link]'

      assert_select 'input[name=?]', 'knowledge[impact_level]'

      assert_select 'textarea[name=?]', 'knowledge[solution_hint]'

      assert_select 'input[name=?]', 'knowledge[path_pattern]'
    end
  end
end
