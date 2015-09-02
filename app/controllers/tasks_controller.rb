class TasksController < ApplicationController
  def index
    render locals: {
             tasks: tasks.index_view(params[:status]).as(:tasks)
           }
  end

  private

  def tasks
    rom.relation(:tasks)
  end
end
