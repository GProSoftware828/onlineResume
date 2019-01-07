class AddBadgeToSkills < ActiveRecord::Migration[4.2]
  def change
    add_column :skills, :badge, :text
  end
end
