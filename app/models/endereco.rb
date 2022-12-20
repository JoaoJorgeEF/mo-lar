class Endereco < ApplicationRecord
    validates :logradouro, presence: true, length: {minimum:2, maximum:50}
    validates :bairro, presence: true, length: {minimum:2, maximum:30}
    validates :numero_residencia, presence: true, numericality: {only_integer: true, grater_than: 0}
    validates :cep, presence: true, numericality: {only_integer: true}
    validates :usuario, presence: true
    belongs_to :usuario
end
