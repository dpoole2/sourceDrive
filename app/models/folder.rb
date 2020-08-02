class Folder < ApplicationRecord
    has_many :folder_files
    belongs_to :parent, :class_name => "Folder", :foreign_key => "folder_child_id", :optional => true
   has_many :child_folders, :class_name => "Folder", :foreign_key => "folder_parent_id"
    


   
end
