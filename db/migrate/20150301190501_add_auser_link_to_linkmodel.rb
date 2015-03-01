class AddAuserLinkToLinkmodel < ActiveRecord::Migration
  def change
    add_column :links, :user_link, :string
  end
end
