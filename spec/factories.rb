FactoryGirl.define do
  factory :user do
    name 'User'
    sequence(:email) {|num| "user##{num}@user.com"}
    password 'password'
    password_confirmation 'password'
    company 'Important Company'
    phone 8675309
    fax 8675308
    street_address '100 Main Street'
    city 'Raleigh'
    state 'NC'
    zip 27610
  end

  factory :buyer do
    current_owner 'Joe Smith'
    sequence(:borrower) {|name| "Elvis ##{name}"}
    property_address_number 100
    property_address_street 'Main'
    property_address_type 'Street'
    property_address_city 'Raleigh'
    property_address_state 'NC'
    property_address_zip 27610
    county 'Wake'
    purchase_price 100000
    owners_coverage_amount 100000
    type_owners_policy_requested 'Owner\'s Policy'
    type_of_title 'Fee Simple'
    lender_name 'Wells Fargo'
    type_of_loan 'Conventional'
    loan_number 0014573
    loan_amount 100000
    variable_loan_coverage 125000
    type_of_loan_policy 'Short Form Policy'
    icl_requested 'Yes'
    alta_endorsement '5, 8.1, 9'
  end

  factory :title_report do
    taxes_paid 2016
    special_levies 'no'
    restrictive_covenants 'no'
    covenant_book 1013
    covenant_page 445
    restrictions_violated 'none'
    restrictions_forfeiture 'no'
    right_of_way 'yes'
    prior_policy 'yes'
    manufactured_home 'no'
    property_occupied_by 'owner'
    property_construction 'none'
    mechanics_lien_agent 'none'
    survey_required 'no'
    use_of_property 'residential'
    restrictions_violated_explain 'none'
    buyer
  end
end
