module Docs
  class Folder < ActiveRecord::Base

    belongs_to :parent, class_name: :Folder
    has_many :sub_folders, class_name: :Folder, foreign_key: :parent_id
    has_many :documents

    def self.root_folder
      self.where(is_root: 1).first
    end

    def root?
      self.is_root == 1
    end

    def has_sub_folders?
      self.sub_folders.length > 0
    end

  end
end
