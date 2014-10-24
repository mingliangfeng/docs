class CreateDocsPermissions < ActiveRecord::Migration
  def change
    create_table :docs_permissions do |t|
      t.string :permission_type
      t.integer :user_id
      t.integer :document_id

      t.timestamps
    end
  end
end
