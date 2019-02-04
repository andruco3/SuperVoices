class CreateConcourses < ActiveRecord::Migration[5.2]
  def change
    create_table :concourses do |t|
      t.string :name
      t.string :url
      t.date :initDate
      t.date :endDate
      t.string :description
      t.string :comment
      t.string :winner
      t.float :prize
      t.belongs_to :administrator, index: true
      t.timestamps
    end
  end
end
