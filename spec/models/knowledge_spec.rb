require 'rails_helper'

RSpec.describe Knowledge do
  describe 'associations' do
    it { is_expected.to belong_to(:author).class_name('User') }
  end
end
