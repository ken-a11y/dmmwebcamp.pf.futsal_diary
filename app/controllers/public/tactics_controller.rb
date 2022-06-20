class Public::TacticsController < ApplicationController
  def index
    @tactics = Tactic.all
  end
  def show
    @tactic = Tactic.find(params[:id])
  end
end