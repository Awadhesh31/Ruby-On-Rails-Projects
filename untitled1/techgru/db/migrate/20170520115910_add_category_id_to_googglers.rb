class AddCategoryIdToGoogglers < ActiveRecord::Migration[5.0]
  def change
    add_column :googglers, :category_id, :integer
  end
end
