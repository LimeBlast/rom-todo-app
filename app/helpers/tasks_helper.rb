module TasksHelper
  def status_label(is_completed)
    if is_completed then
      'Completed'
    else
      'Active';
    end
  end
end
