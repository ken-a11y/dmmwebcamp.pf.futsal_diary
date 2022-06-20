class Admin::TeamsController < ApplicationController

  def index
    @teams =Team.all
  end

  def show
    @team = Team.find(params[:id])
    @users = User.all
  end

  def edit
    @team = Team.find(params[:id])
  end

  def update
    if @team.update(team_params)
      redirect_to team_path(@team)
    else
      render "edit"
    end
  end

  def team_params
    params.require(:team).permit(:team_name, :introduction, :team_image)
  end
end
