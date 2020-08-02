class CreateFolderFiles < ActiveRecord::Migration[5.2]
  def change
    create_table :folder_files do |t|
      t.binary "data"
      t.bigint "folder_id"
      t.bigint "user_id"
      t.timestamps
    end
  end
end
