class TitleReportsController < ApplicationController
  before_action :set_buyer
  before_action :set_title_report, only: [:show, :edit, :update, :destroy]

  def new
    @title_report = TitleReport.new
  end

  def create
    @title_report = @buyer.title_reports.new(title_report_params)
    if @title_report.save
      redirect_to @buyer
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    @title_report.update(title_report_params)
    if @title_report.save
      redirect_to @buyer
    else
      render :edit
    end
  end

  def destroy
    @title_report.destroy
    redirect_to profile_path(@user)
  end

  private

  def set_buyer
    @buyer = Buyer.find(params[:buyer_id])
  end

  def set_title_report
    @title_report = @buyer.title_reports.find(params[:id])
  end

  def title_report_params
    params.require(:title_report).permit(
      :taxes_paid, :special_levies, :restrictive_covenants, :covenant_book,
      :covenant_page, :restrictions_violated, :restrictions_forfeiture,
      :right_of_way, :prior_policy, :manufactured_home, :property_occupied_by,
      :property_construction, :mechanics_lien_agent, :survey_required,
      :use_of_property, :buyer_id
    )
  end

end
