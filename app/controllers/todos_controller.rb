class TodosController < ApplicationController
  before_action :set_todo, only:[:show,:edit,:destroy]

  def index
  	@todos = Todo.all
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
  	set_todo
  end

  def edit
  	set_todo
  end

  def update
  	 
  	if @todo.update todos_params
  		flash[:notice] = "Mise à jour effectué avec succès..."
  		redirect_to todo_path @todo
  	else
  		render 'edit'
  	end
  end

  def destroy
  	set_todo
  	@todo.destroy
  	flash[:notice] = "Tache supprimée avec succès!!!"
  	redirect_to todos_path
  end
  private

  	def set_todo
  		@todo = Todo.find params[:id]
  	end

  	def todos_params
  		params.require(:todo).permit(:name,:description)
  	end
end