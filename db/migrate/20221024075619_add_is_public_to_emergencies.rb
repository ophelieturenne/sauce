class AddIsPublicToEmergencies < ActiveRecord::Migration[7.0]
  def change
    add_column :emergencies, :ispublic, :boolean, default: false
  end
end
