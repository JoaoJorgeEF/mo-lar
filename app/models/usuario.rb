class Usuario < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :jwt_authenticatable,
         jwt_revocation_strategy: JwtDenylist

  validates :email, presence: true
  validates :nome, presence: true, length: {minimum:2, maximum:40}
  validates :cpf, presence: true, numericality: {only_integer: true}
  validates :telefone, presence: true, numericality: {only_integer: true}
  has_one :endereco

  accepts_nested_attributes_for :endereco
end
