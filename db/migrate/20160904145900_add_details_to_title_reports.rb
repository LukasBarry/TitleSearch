class AddDetailsToTitleReports < ActiveRecord::Migration
  def change
    add_column :title_reports, :restrictions_violated_explain, :string
    add_column :title_reports, :right_of_way_explain, :string
    add_column :title_reports, :mechanics_lien_agent_name, :string
    add_column :title_reports, :use_of_property_explain, :string
  end
end
