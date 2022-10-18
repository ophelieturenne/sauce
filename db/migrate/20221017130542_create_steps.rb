class CreateSteps < ActiveRecord::Migration[7.0]
  def change
    create_table :steps do |t|
      t.integer :position
      t.text :description
      t.text :img_url
      t.references :aid, null: false, foreign_key: true

      t.timestamps
    end
  end
end
