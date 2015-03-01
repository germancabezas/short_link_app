class AddRandomToLink < ActiveRecord::Migration
  def change
    add_column :links, :random_short_link, :string
  end
end
