class UsuariosController < ApplicationController
	before_action :set_usuario, only: [:show, :update, :destroy]

  # GET /usuario/:id
  def show
  	json_response(@usuario)
  end

  # POST /usuario/:id
  def update
    body_request = request.raw_post
    if body_request.include? '"id"'
      json_response({ error: 'id no es modificable' }, :bad_request)
    else
      @usuario.update(usuario_params)
      json_response(@usuario)
    end
    rescue Exception
      json_response({ error: 'La modificación ha fallado' }, :internal_server_error)
  end

  # DELETE /usuario/:id
  def destroy
    @usuario.destroy
    head :no_content
  end

  # GET /usuario
  def index
    @usuarios = Usuario.all
    json_response({'usuarios' => @usuarios, 'total' => @usuarios.count})
  end

  # PUT /usuario
  def create
    body_request = request.raw_post
    if body_request.include? '"id"'
      json_response({ error: 'No se puede crear usuario con id' }, :bad_request)
    else
      @usuario = Usuario.new(usuario_params)
      @usuario.save
      json_response(@usuario, :created)
    end
    rescue Exception
      json_response({ error: 'La creación ha fallado' }, :internal_server_error)
  end

  private

  def usuario_params
    # whitelist params
    params.permit(:id, :usuario, :nombre, :apellido, :twitter)
  end

  def set_usuario
    @usuario = Usuario.find(params[:id])
  end

end