class Restaurante < ApplicationRecord
	validates_presence_of :nome , message: "campo em branco"
	validates_presence_of :endereco , message: "campo em branco"


	validates_uniqueness_of :nome,     message: "Já existe"
	validates_uniqueness_of :endereco, message: "Já existe"

	def first_letter_upcase
		erros.add(:nome,"primeira letra deve ser maiuscula manézão")		
	end

end
