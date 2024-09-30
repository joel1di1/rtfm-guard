# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'knowledges/index' do
  before do
    assign(:knowledges, [
             Knowledge.create!(
               regexp: 'Regexp',
               user: nil,
               description: 'MyText',
               documentation_link: 'Documentation Link',
               impact_level: 2,
               solution_hint: 'MyText',
               path_pattern: 'Path Pattern'
             ),
             Knowledge.create!(
               regexp: 'Regexp',
               user: nil,
               description: 'MyText',
               documentation_link: 'Documentation Link',
               impact_level: 2,
               solution_hint: 'MyText',
               path_pattern: 'Path Pattern'
             )
           ])
  end

  it 'renders a list of knowledges' do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new('Regexp'.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new('MyText'.to_s), count: 2
    assert_select cell_selector, text: Regexp.new('Documentation Link'.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new('MyText'.to_s), count: 2
    assert_select cell_selector, text: Regexp.new('Path Pattern'.to_s), count: 2
  end
end
