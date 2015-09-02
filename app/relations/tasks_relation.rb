class TasksRelation < ROM::Relation[:sql]
  dataset :tasks

  # define your methods here ie:
  #
  # def all
  #   select(:id, :name).order(:id)
  # end
end
