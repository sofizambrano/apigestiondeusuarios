module ExceptionHandler
  # provides the more graceful 'included' method
  extend ActiveSupport::Concern

  included do
    rescue_from ActiveRecord::RecordNotFound do |e|
      json_response({ error: 'Usuario no encontrado' }, :not_found)
    end

    rescue_from ActiveRecord::RecordInvalid do |e|
      json_response({ error: 'Entidad no procesable' }, :unprocessable_entity)
    end

    #rescue_from ActiveRecord::CatchAll do |e|
    #  json_response({message: 'Ha fallado'}, :nternal_server_error)
    #end
    #rescue_from Exception do |e|
    #  json_response({ message: 'La modificación ha fallado' }, :internal_server_error)
    #end

  end
end