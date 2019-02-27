class CompleteTodo
  def initialize(todo)
    @todo = todo
  end

  def call
    @todo.touch(:completed_at)
  end
end
