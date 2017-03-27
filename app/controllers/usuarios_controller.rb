class UsuariosController < ApplicationController
	before_action :set_usuario, only: [:show, :update, :destroy]

  # GET /usuario/:id
  def show
  	json_response(@usuario)
  end

  # POST /usuario/:id
  def update
    @usuario.update(usuario_params)
    json_response(@usuario)
  end

  # DELETE /usuario/:id
  def destroy
    @usuario.destroy
    head :no_content
  end

  # GET /usuario
  def index
    @usuarios = Usuario.all
    json_response(@usuarios)
  end

  # PUT /usuario
  def create
    @usuario = Usuario.create!(usuario_params)
    json_response(@usuario)
  end

  private

  def usuario_params
    # whitelist params
    params.permit(:usuario, :nombre, :apellido, :twitter)
  end

  def set_usuario
    @usuario = Usuario.find(params[:id])
  end

end