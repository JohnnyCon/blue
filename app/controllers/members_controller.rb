class MembersController < ApplicationController

  def show
    @member = Member.find(params[:id])
  end

  def new
    @company = Company.find(params[:company_id])
    @member = Member.new
  end

  def create
    member = Member.create(member_params)

    redirect_to company_path(member.company_id)
  end

  def edit
    @company = Company.find(params[:company_id])
    @member = Member.find(params[:id])
  end

  def update
    member = Member.find(params[:id])
    member.update(member_params)

    redirect_to company_path(member.company_id)
  end

  def destroy
    member = Member.find(params[:id])
    company_id = member.company_id
    member.destroy

    redirect_to company_path(company_id)
  end


  def member_params
    params.require(:member)
          .permit(:name, :title, :company_id)
  end

end
