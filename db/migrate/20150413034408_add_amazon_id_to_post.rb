class AddAmazonIdToPost < ActiveRecord::Migration
  def change
    add_column :posts, :amazon_id, :string
  end
end
