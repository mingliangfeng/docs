class CreateDocsFolders < ActiveRecord::Migration
  def change
    create_table :docs_folders do |t|
      t.string :name
      t.integer :parent_id

      t.timestamps
    end
  end
end
