require 'cpf_cnpj'

class Insured < ApplicationRecord
  validates :name, presence: true
  validates :cpf, presence: true
  validate :cpf_valid

  def cpf_valid
    errors.add(:cpf, 'invalid cpf') unless CPF.valid?(cpf)
  end
end
