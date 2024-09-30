# frozen_string_literal: true

class CreateKnowledges < ActiveRecord::Migration[7.2]
  def change
    create_table :knowledges do |t|
      t.string :regexp
      t.text :description
      t.string :documentation_link
      t.integer :impact_level
      t.text :solution_hint
      t.string :path_pattern

      t.timestamps
    end

    add_reference :knowledges, :author, foreign_key: { to_table: :users }
  end
end
