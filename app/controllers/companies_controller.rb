class CompaniesController < ApplicationController
  def index
    @companies = Company.all
  end

  def new
    @company = Company.new
  end

  def create
    Company.create(company_params)

    redirect_to :companies
  end


  def company_params
    params.require(:company)
          .permit(:name, :industry, :employee_count, :join_date)
  end

end
