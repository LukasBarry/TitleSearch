class CreateTitleReports < ActiveRecord::Migration
  def change
    create_table :title_reports do |t|
      t.integer :taxes_paid
      t.string :special_levies
      t.string :restrictive_covenants
      t.integer :covenant_book
      t.integer :covenant_page
      t.string :restrictions_violated
      t.string :restrictions_forfeiture
      t.string :right_of_way
      t.string :prior_policy
      t.string :manufactured_home
      t.string :property_occupied_by
      t.string :property_construction
      t.string :mechanics_lien_agent
      t.string :survey_required
      t.string :use_of_property

      t.timestamps null: false
    end
  end
end
