# frozen_string_literal: true

class Match < ApplicationRecord
  belongs_to :pull_request
  belongs_to :knowledge

  # Validations
  validates :file_path, presence: true
  validates :line_number, presence: true
  validates :code_snippet, presence: true
end
