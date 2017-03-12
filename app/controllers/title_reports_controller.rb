class TitleReportsController < ApplicationController
  def new
    @title_report = TitleReport.new
  end

  def create
    @title_report = TitleReport.create(title_report_params)
    if @title_report.save
      redirect_to @title_report
    else
      render :new
    end
  end

  def show
    @title_report = TitleReport.find(params[:id])
  end

  def edit
    @title_report = TitleReport.find(params[:id])
  end

  def update
    @title_report = TitleReport.find(params[:id])
    @title_report.update(title_report_params)
    if @title_report.save
      redirect_to @title_report
    else
      render :edit
    end
  end

  def destroy
    @title_report = TitleReport.find(params[:id])
    @title_report.destroy
    redirect_to profile_path(@user)
  end

  private

  def title_report_params
    params.require(:title_report).permit(:taxes_paid, :special_levies, :restrictive_covenants, :covenant_book, :covenant_page, :restrictions_violated, :restrictions_forfeiture, :right_of_way, :prior_policy, :manufactured_home, :property_occupied_by, :property_construction, :mechanics_lien_agent, :survey_required, :use_of_property, :buyer_id)
  end

end
