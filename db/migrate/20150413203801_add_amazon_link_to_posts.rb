class AddAmazonLinkToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :amazon_link, :string
  end
end
