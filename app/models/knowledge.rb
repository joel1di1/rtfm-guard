# frozen_string_literal: true

class Knowledge < ApplicationRecord
  belongs_to :author, class_name: 'User'
end
