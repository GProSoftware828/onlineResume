class CreateTestBlogs < ActiveRecord::Migration[4.2]
  def change
    create_table :test_blogs do |t|
      t.string :title
      t.string :body

      t.timestamps
    end
  end
end
