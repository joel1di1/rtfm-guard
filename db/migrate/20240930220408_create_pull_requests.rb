class CreatePullRequests < ActiveRecord::Migration[7.2]
  def change
    create_table :pull_requests do |t|
      t.string :external_id
      t.string :branch
      t.string :status
      t.references :project, null: false, foreign_key: true

      t.timestamps
    end
  end
end
