class AddIsRootToFolders < ActiveRecord::Migration
  def change
    add_column :docs_folders, :is_root, :integer
  end
end
