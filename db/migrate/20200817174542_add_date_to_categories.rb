class AddDateToCategories < ActiveRecord::Migration[6.0]
  def change
    add_column :categories, :date, :date
  end
end
