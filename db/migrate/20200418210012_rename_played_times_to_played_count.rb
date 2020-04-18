class RenamePlayedTimesToPlayedCount < ActiveRecord::Migration[6.0]
  def change
    rename_column :songs, :played_times, :played_count
  end
end
