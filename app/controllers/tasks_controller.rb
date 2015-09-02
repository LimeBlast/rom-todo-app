class TasksController < ApplicationController
  def index
    render locals: { tasks: tasks(params[:status]) }
  end

  private

  def tasks(status)
    rom.relation(:tasks).index_view(status)
  end
end
