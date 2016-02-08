# app_ruby_on_rails_db
Se genera una aplicacion web usando ruby on rails

Para esta aplicacion se crea de la siguiente manera, rails new nombre_del_proyecto -d mysql. Aparte se instala el conector MySQL gem install mysql2.

Ahora se modifica el archivo /config/database.yml con la siguiente informacion lo que permite interactuar con la base de datos: 
development:
  adapter: mysql2
  encoding: utf8
  reconnect: false
  database: base_datos
  pool: 5
  username: usuario
  password: contrasena
  host: 127.0.0.1

En cuestion de la aplicacion se crea un modelo el cual interactua con la base de datos, con ello se usa el comando rails generate model Nombre campo:valor campo1:valor

Ahora se hace la migracion del modelo hacia la base de datos, para que se generen las tablas correspondientes, con la intruccion rake db:migrate

La aplicacion responde en base a una URL, para que esto tenga el funcionamiento adecuado, a corde a la tabla creada previamente se hace el direccionamiento en el archivo /config/routes.rb, complemento con la instruccion resources :nombreTabla

La actividad que sigue es crear el controller, lo que permite hacer operaciones con la URL, para crearlo se hace uso del comando rails generate controller Nombre index new create

Mostrar registros
def index
   @variable = nombreModelo.all()
end

Insertar registros
def new
   @@variable = nombreModelo.new()
end

def create
   
   @atributo = params[:varible][:atributo];
   @atributo2 = params[:varible][:atributo2];
   @tarea = Tarea.new({
      :campo => @atributo,
      :campo1 => @atributo2   
   });
   
   if @varible.save()
      redirect_to modelo_path, :notice => "Exito al insertar";
   else
      render "new";
   end
 end


 Se verifica el funcionamiento de la aplicacion, para ello se usa el comando rails server