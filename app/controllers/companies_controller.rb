class CompaniesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_company, only: [:edit, :update, :destroy, :show]


  def index
    @companies = Company.all
  end

  def new
    @company = Company.new
  end

  def create
    @company = Company.new(company_params)

    if @company.save
      flash[:success] = "Saved company successfully"
      redirect_to :companies
    else
      flash[:alert] = "Failed to save company"
      render :new
    end
  end

  def edit
  end

  def update
    if @company.update(company_params)
      redirect_to :companies
    else
      render :edit
    end
  end

  def show
  end

  def destroy
    @company.destroy

    redirect_to :companies
  end

  def set_company
    @company = Company.find(params[:id])
  end

  def company_params
    params.require(:company)
          .permit(:name, :industry, :employee_count, :join_date)
  end

end
