class TasksController < ApplicationController
  def index
    render locals: { tasks: rom.relation(:tasks) }
  end
end
