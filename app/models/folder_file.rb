class FolderFile < ApplicationRecord
    belongs_to :folder, optional: true
end
