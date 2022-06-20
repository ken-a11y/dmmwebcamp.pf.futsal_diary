class Public::TeamsController < ApplicationController
  before_action :authenticate_user!, only: [:show, :edit, :update]
  before_action :ensure_correct_user, only: [:edit, :update]

  def new
    @team =Team.new
  end

  def show
    @team = Team.find(params[:id])
  end

  def edit
    @team = Team.find(params[:id])
  end

  def create
    @team = Team.new(team_params)
    if @team.save
      redirect_to new_user_registration_path
    else
      render 'new'
    end
  end

  def update
    @team = Team.find(params[:id])
    if @team.update(team_params)
      redirect_to team_path(@team)
    else
      render "edit"
    end
  end

  def team_params
    params.require(:team).permit(:team_name, :introduction, :team_image)
  end

  def ensure_correct_user
    @team = Team.find(params[:id])
    unless @team.owner_id == current_user.id
      redirect_to team_path(@team)
    end
  end

end
