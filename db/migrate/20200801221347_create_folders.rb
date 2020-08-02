class CreateFolders < ActiveRecord::Migration[5.2]
  def change
    create_table :folders do |t|
      t.string "folder_name"
      t.bigint "user_id"
      t.bigint "folder_parent_id"
      t.bigint "folder_child_id"
      t.bigint "file_id"
      t.boolean "root", :default => false
      t.timestamps
    end
  end
end
