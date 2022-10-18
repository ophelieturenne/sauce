class CreateAids < ActiveRecord::Migration[7.0]
  def change
    create_table :aids do |t|
      t.string :name
      t.text :description
      t.text :video_url

      t.timestamps
    end
  end
end
