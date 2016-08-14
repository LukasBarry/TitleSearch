class CreateBuyers < ActiveRecord::Migration
  def change
    create_table :buyers do |t|
      t.string :current_owner
      t.string :borrower
      t.integer :property_address_number
      t.string :property_address_street
      t.string :property_address_type
      t.string :property_address_city
      t.string :property_address_state
      t.integer :property_address_zip
      t.string :county
      t.integer :purchase_price
      t.integer :owners_coverage_amount
      t.string :type_owners_policy_requested
      t.string :type_of_title
      t.string :lender_name
      t.string :type_of_loan
      t.integer :loan_number
      t.integer :loan_amount
      t.integer :variable_loan_coverage
      t.string :type_of_loan_policy
      t.string :icl_requested
      t.string :alta_endorsement

      t.timestamps null: false
    end
  end
end
