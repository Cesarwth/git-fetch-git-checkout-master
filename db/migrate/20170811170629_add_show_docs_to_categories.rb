class AddShowDocsToCategories < ActiveRecord::Migration[5.1]
  def change
    add_column :categories, :show_docs, :boolean
  end
end
