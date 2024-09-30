class CreateProjectKnowledges < ActiveRecord::Migration[7.2]
  def change
    create_table :project_knowledges do |t|
      t.references :project, null: false, foreign_key: true
      t.references :knowledge, null: false, foreign_key: true

      t.timestamps
    end
  end
end
