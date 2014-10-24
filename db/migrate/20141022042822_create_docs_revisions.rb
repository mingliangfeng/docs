class CreateDocsRevisions < ActiveRecord::Migration
  def change
    create_table :docs_revisions do |t|
      t.string :comment
      t.integer :user_id
      t.integer :document_id

      t.timestamps
    end
  end
end
