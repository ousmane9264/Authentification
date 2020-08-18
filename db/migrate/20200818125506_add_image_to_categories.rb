class AddImageToCategories < ActiveRecord::Migration[6.0]
  def change
    add_column :categories, :image_data, :string
    add_column :categories, :text, :string
  end
end
