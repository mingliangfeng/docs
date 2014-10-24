class CreateDocsDocuments < ActiveRecord::Migration
  def change
    create_table :docs_documents do |t|
      t.string :name
      t.string :doc_type
      t.integer :user_id
      t.integer :folder_id

      t.timestamps
    end
  end
end
