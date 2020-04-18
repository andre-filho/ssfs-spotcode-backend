class RemovePhotoUrlFromArtist < ActiveRecord::Migration[6.0]
  def change
    remove_column :artists, :photo_url, :string
  end
end
