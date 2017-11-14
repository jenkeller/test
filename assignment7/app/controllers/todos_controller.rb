
class TodoController < ApplicationController
def index
	@todos = Todo.all
end

def new
	@todo = Todo.new
end

def create
  @todo = Todo.create(todo_params)
  redirect_to '/todo'
end

private
def todo_params
  params.require(:todo).permit(:item)
end

  def edit
  @todo = Todo.find(params[:id])
end

def update
  @todo = Todo.find(params[:id]) 
  @todo.update
  end

  def destroy
  @todo = Todo.find(params[:id])
  @todo.destroy
end
end