class WorkorderController < ApplicationController
  def show
    @workorder = Workorder.find(params[:id])
  end
end
