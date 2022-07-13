class Public::EventNoticesController < ApplicationController
  
  def new
    @team = Team.find(params[:team_id])
  end
  
  def create
    
    @team = Team.find(params[:team_id])
    @title = params[:title]
    @body = params[:body] 
    
    event = { 
      :team => @team, 
      :title => @title, 
      :body => @body
      
    }
    
    EventMailer.send_notifications_to_team(event)
    
    render :sent
  end
  
  def sent
    redirect_to team_path(params[:team_id])
  end
  
end