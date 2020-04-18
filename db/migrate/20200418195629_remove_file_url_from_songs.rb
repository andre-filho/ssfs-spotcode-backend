class RemoveFileUrlFromSongs < ActiveRecord::Migration[6.0]
  def change
    remove_column :songs, :file_url, :string
  end
end
