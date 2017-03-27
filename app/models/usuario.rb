class Usuario < ApplicationRecord
	validates :usuario, :presence => {:message => " es obligatorio" }
	validates :nombre, :presence => {:message => " es obligatorio" }
	attr_readonly :id
end
