class CreatePhonenumbers < ActiveRecord::Migration[6.0]
  def change
    create_table :phonenumbers do |t|
      t.integer :phonenumber
      t.integer :user_id

      t.timestamps
    end
  end
end
