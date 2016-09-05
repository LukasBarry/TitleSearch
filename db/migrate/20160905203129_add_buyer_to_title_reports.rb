class AddBuyerToTitleReports < ActiveRecord::Migration
  def change
    add_reference :title_reports, :buyer, index: true, foreign_key: true
  end
end
