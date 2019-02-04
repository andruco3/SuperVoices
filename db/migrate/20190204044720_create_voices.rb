class CreateVoices < ActiveRecord::Migration[5.2]
  def change
    create_table :voices do |t|
      t.string :mp3Voice
      t.string :uploadVoice
      t.belongs_to :concourses, index: true
      t.timestamps
    end
  end
end
