class TodosController < ApplicationController
  before_action :authenticate

  def index
    # @todos = Todo.where(email: current_email)
    @todos = current_user.todos
  end

  def new
    @todo = Todo.new
  end

  def create
    @todo = current_user.todos.new(todo_params)
    # @todo = Todo.new(todo_params.merge(email: current_email))

    if @todo.save
      redirect_to todos_path
    end
  end

  private

  def todo_params
    params.require(:todo).permit(:title)
  end
end
