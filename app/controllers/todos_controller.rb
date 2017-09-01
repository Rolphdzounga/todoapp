class TodosController < ApplicationController

	def todos
	end

  def new
  	@todo = Todo.new
  end

  def create
  	@todo = Todo.new todos_params
  	if @todo.save
  		flash[:notice] = "Ajout effectué avec succès..."
  		redirect_to todo_path @todo
  	else
  		render 'new'
  	end
  end

  def show
  	@todo = Todo.find params[:id]
  end

  private

  	def todos_params
  		params.require(:todo).permit(:name,:description)
  	end
end