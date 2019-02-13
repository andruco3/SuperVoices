class AddSlugToConcourse < ActiveRecord::Migration[5.2]
  def change
    add_column :concourses, :slug, :string
  end
end
