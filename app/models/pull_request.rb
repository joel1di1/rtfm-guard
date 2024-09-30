# frozen_string_literal: true

class PullRequest < ApplicationRecord
  belongs_to :project
  has_many :matches, dependent: :destroy

  # Validations
  validates :external_id, presence: true, uniqueness: { scope: :project_id }
  validates :branch, presence: true
  validates :status, presence: true
end
