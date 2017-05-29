class MytasksController < ApplicationController

  def index
    @mytask = Mytask.all
  end






end
