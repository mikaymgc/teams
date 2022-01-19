class TeamsController < ApplicationController

  before_action :set_team, only: [:show, :edit, :update, :destroy]

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
    #ここでメンバー一覧表示したい
  end

  def edit
  end

  def update
  end

  def destroy
    redirect_to root_path if @team.destroy
  end

  private

  def team_params
    params.require(:team).permit(:team_name)
  end

  def set_team
    @team = Team.find(params[:id])
  end
end
