# frozen_string_literal: true

class ProjectKnowledge < ApplicationRecord
  belongs_to :project
  belongs_to :knowledge

  validates :knowledge_id, uniqueness: { scope: :project_id, message: 'is already added to this project' }
end
