class Admin::TeamsController < ApplicationController

  def index
    @teams =Team.all
  end

  def show
    @team = Team.find(params[:id])
    @users = @team.users
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

  def destroy
    @team = Team.find(params[:id])
    @team.destroy
    redirect_to admin_teams_path
  end

  def team_params
    params.require(:team).permit(:team_name, :introduction, :team_image)
  end
end
