class CreateDeleteShowsColumn < ActiveRecord::Migration[6.0]
  def change
    remove_column :shows, :catchphrase
  end
end
