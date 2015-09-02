class UpdateTaskForm < TaskForm
  commands tasks: :update

  def self.build_from_existing(id)
    task = rom.relation(:tasks).by_id(id).one!
    self.build(task)
  end

  def commit!
    tasks.try { tasks.update.by_id(id).call(attributes) }
  end
end
