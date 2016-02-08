class TareasController < ApplicationController
  def index
	@tarea = Tarea.all()
  end

  def new
  	@tarea = Tarea.new

  end

  def create
  	@tarea = Tarea.new(params.require(:tarea).permit(:titulo, :descripcion))

  	@tarea.titulo = params[:tarea][:titulo]
  	@tarea.descripcion = params[:tarea][:descripcion]

  	puts @tarea
  	puts @tarea.titulo
  	puts @tarea.descripcion

 	@tarea.save
  	redirect_to @tarea
	
  end


  def show
  end
end
