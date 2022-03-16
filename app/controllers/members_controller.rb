class MembersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_member, only: [:show, :edit, :update, :destroy]
  before_action :day, only: [:show]

  def index
  end
  
  def new
    @member = Member.new
    @team = Team.find(params[:team_id])

  end
  
  def create
    member = Member.new(member_params)
    if member.save
      redirect_to "/teams/#{member.team.id}"
    else
      render :new
    end
  end
  
  def show
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
    redirect_to "/teams/#{@member.team.id}" if @member.destroy
  end

  private

  def member_params
    params.require(:member).permit(:name, :birthday, :phone_number, :gender_id, :technical_grade_id, :referee_grade_id, :referee_deadline, :insurance_id).merge(team_id: params[:team_id],user_id: current_user.id)
  end

  def set_member
    @member = Member.find(params[:id])
  end

  def day
    @today = Date.today.strftime("%Y%m%d").to_i
  end
end

