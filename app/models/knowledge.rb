# frozen_string_literal: true

class Knowledge < ApplicationRecord
  has_many :project_knowledges, dependent: :destroy
  has_many :projects, through: :project_knowledges

  belongs_to :author, class_name: 'User'
end
