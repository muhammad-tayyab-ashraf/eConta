class CreateOrganizations < ActiveRecord::Migration[5.2]
  def change
    create_table :organizations do |t|
      t.string :name
      t.integer :vat
      t.string :registration_no
      t.string :bank_account_1
      t.string :bank_account2
      t.string :bank_name
      t.string :street
      t.string :no
      t.string :zip
      t.string :county
      t.string :country
      t.references :user, foreign_key: true

      t.datetime
    end
  end
end
