class AddPositionToPortfolios < ActiveRecord::Migration[4.2]
  def change
    add_column :portfolios, :position, :integer
  end
end
