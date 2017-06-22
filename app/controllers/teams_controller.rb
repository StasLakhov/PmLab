class TeamsController < ApplicationController

  def index
    @teams = Team.all
  end

  def show
    @team = Team.find(params[:id])
  end

  def new
    @team = Team.new
  end

  def edit
    @team = Team.find(params[:id])
  end

  def create
    @team = Team.create(team_params)
    redirect_to teams_path
  end

  def update
    @team = Team.find(params[:id])
    if @team.update(team_params)
      redirect_to teams_path
    end
  end

  def destroy
    @team = Team.find(params[:id])
    @team.destroy
    redirect_to teams_path
  end


  private

  def team_params
    params.require(:team).permit(:name,
                                 :position,
                                 :phone,
                                 :skype,
                                 :email,
                                 :birthday,
                                 :hired)
  end

end
