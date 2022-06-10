class Public::TeamsController < ApplicationController
  before_action :authenticate_user!
  before_action :ensure_correct_user, only: [:edit, :update]

  def show
    @team = Team.find(params[:id])
  end

  def new
    @team =Team.new
  end

  def edit
  end

  def create
    @team = Team.new(team_params)
    if @team.save
      redirect_to new_user_registration_path
    else
      @team.errors.full_messages.each do |msg|
        p msg
      end
      render 'new'
    end
  end

  def update
    if @team.update(team_params)
      redirect_to team_path
    else
      render "edit"
    end
  end

  def team_params
    params.require(:team).permit(:team_name, :introduction, :team_image)
  end

  def ensure_correct_user
    @group = Group.find(params[:id])
    unless @group.owner_id == current_user.id
      redirect_to groups_path
    end
  end

end
