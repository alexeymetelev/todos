class IncompleteTodo
  def initialize(todo)
    @todo = todo
  end

  def call
    @todo.update(completed_at: nil)
  end
end
