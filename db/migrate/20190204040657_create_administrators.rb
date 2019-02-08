class CreateAdministrators < ActiveRecord::Migration[5.2]
  def change
    create_table :administrators do |t|
      t.string :name
      t.string :surname
      t.string :email

      t.timestamps
    end
  end
end
