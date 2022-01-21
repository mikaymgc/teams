class MembersController < ApplicationController

  before_action :set_member, only: [:show, :edit, :update, :destroy]

  def index
    @members = Member.all
  end
  
  def new
    @member = Member.new
  end
  
  def create
    @member = Member.new(member_params)
    if @member.save
      redirect_to team_members_path
    else
      render :new
    end
  end
  
  def show
    #各メンバーの詳細
  end
  
  def edit
  end
  
  def update
    if @member.update(member_params)
      redirect_to team_member_path(@member.id)
    else
      render :edit
    end
  end
  
  def destroy
    redirect_to team_members_path if @member.destroy
  end

  private

  def member_params
    params.require(:member).permit(:name, :birthday, :phone_number, :gender_id, :technical_grade_id, :referee_grade_id, :referee_deadline, :insurance_id).merge(team_id: params[:team_id])
  end

  def set_member
    @member = Member.find(params[:id])
  end
end

