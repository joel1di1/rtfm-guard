class CreateProjects < ActiveRecord::Migration[7.2]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :vcs_provider
      t.string :vcs_identifier
      t.string :webhook_url
      t.jsonb :settings
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
