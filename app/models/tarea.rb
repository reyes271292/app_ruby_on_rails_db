class Tarea < ActiveRecord::Base
	validates :titulo, presence: true, length: { minimum: 5 }
	validates :descripcion, presence: true, length: { minimum: 5 }
end
