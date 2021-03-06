class TeamsController < ApplicationController
  before_action :authenticate_user!, except: :index
  before_action :set_team, only: [:show, :edit, :update, :destroy]
  before_action :day, only: [:show]

  def index
    @teams = Team.all
  end

  def new
    @team = Team.new
  end

  def create
    @team = Team.new(team_params)
    if @team.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @members = @team.members.includes(:team)
  end

  def edit
  end

  def update
    if @team.update(team_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    redirect_to root_path if @team.destroy
  end

  private

  def team_params
    params.require(:team).permit(:team_name).merge(user_id: current_user.id)
  end

  def set_team
    @team = Team.find(params[:id])
  end

  def day
    @today = Date.today.strftime("%Y%m%d").to_i
  end
end
