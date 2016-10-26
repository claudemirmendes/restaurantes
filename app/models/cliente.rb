class Cliente < ApplicationRecord
validates_presence_of :nome, message: "Nome em branco"
validates_presence_of :idade, message: "idade em branco"

validates_uniqueness_of :nome, message: "Já existe um nome igual a este digitado"
validates_numericality_of :idade, greather_than: 0,
								  less_than: 100,		 
								  message: - "Idade tem que ser um numero"
end
