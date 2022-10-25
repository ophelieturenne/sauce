class AddPhoneNumberToEmergencies < ActiveRecord::Migration[7.0]
  def change
    add_column :emergencies, :phone_number, :string
  end
end
