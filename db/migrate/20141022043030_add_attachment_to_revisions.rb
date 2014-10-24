class AddAttachmentToRevisions < ActiveRecord::Migration
  def self.up
    add_attachment :docs_revisions, :attachment
  end

  def self.down
    remove_attachment :docs_revisions, :attachment
  end
end
