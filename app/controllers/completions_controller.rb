class CompletionsController < ApplicationController
  def create
    todo = find_todo
    CompleteTodo.new(todo).call

    redirect_to todos_path
  end

  def destroy
    todo = find_todo
    IncompleteTodo.new(todo).call

    redirect_to todos_path
  end

  private

  def find_todo
    current_user.todos.find(params[:todo_id])
  end
end
