class AddUserToEmergencies < ActiveRecord::Migration[7.0]
  def change
    add_reference :emergencies, :user, null: false, foreign_key: true
  end
end
