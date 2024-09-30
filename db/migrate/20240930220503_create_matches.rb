class CreateMatches < ActiveRecord::Migration[7.2]
  def change
    create_table :matches do |t|
      t.references :pull_request, null: false, foreign_key: true
      t.references :knowledge, null: false, foreign_key: true
      t.string :file_path
      t.integer :line_number
      t.text :code_snippet

      t.timestamps
    end
  end
end
