class CreateTitleCompanies < ActiveRecord::Migration
  def change
    create_table :title_companies do |t|
      t.string :company_name
      t.string :address
      t.integer :phone_number
      t.integer :fax_number
      t.string :email
      t.string :main_contact

      t.timestamps null: false
    end
  end
end
