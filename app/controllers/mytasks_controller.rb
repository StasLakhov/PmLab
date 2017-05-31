class MytasksController < ApplicationController

  def index
    @mytask = Mytask.all
  end

  def show
    @mytask = Mytask.find(params[:id])
  end

  def new
    @mytask = Mytask.new
  end

  def edit
    @mytask = Mytask.find(params[:id])
  end

  def create
    @mytask = Mytask.create(mytasks_params).save
    redirect_to mytasks_path
  end

  def update
    @mytask = Mytask.find(params[:id])
    if @mytask.update(mytasks_params)
      redirect_to mytasks_path
    end
  end

  def destroy
    @mytask = Mytask.find(params[:id]).destroy
    redirect_to mytasks_path
  end

  private

  def mytasks_params
    params.require(:mytask).permit(:taskname, :taskcontent, :taskstatus, :createtask, :endtask)
  end






end
