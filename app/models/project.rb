# frozen_string_literal: true

class Project < ApplicationRecord
  belongs_to :user # The owner or creator of the project

  # Associations with pull requests and knowledge patterns
  has_many :pull_requests, dependent: :destroy
  has_many :project_knowledges, dependent: :destroy
  has_many :knowledges, through: :project_knowledges

  # Validations
  validates :name, presence: true
  validates :vcs_provider, presence: true
  validates :vcs_identifier, presence: true
end
