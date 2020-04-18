class RemoveCoverUrlFromAlbums < ActiveRecord::Migration[6.0]
  def change
    remove_column :albums, :cover_url, :string
  end
end
