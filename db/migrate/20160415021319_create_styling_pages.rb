class CreateStylingPages < ActiveRecord::Migration
  def change
    create_table :styling_pages do |t|
      t.string :font
      t.string :color
      t.string :title

      t.timestamps null: false
    end
  end
end
