class AddPostStatusToBlogs < ActiveRecord::Migration[4.2]
  def change
    add_column :blogs, :status, :integer, default: 0
  end
end
