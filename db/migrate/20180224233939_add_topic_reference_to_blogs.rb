class AddTopicReferenceToBlogs < ActiveRecord::Migration[4.2]
  def change
    add_reference :blogs, :topic, foreign_key: true
  end
end
