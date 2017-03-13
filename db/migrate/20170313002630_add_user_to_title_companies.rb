class AddUserToTitleCompanies < ActiveRecord::Migration
  def change
    add_reference :title_companies, :user, index: true, foreign_key: true
  end
end
