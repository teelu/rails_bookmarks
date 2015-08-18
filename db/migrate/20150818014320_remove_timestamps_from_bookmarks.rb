class RemoveTimestampsFromBookmarks < ActiveRecord::Migration
  def change
    remove_column :bookmarks, :timestamps, :string
  end
end
