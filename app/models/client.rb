class Client < ActiveRecord::Base
  belongs_to :district
  attr_accessible :address, :cep, :cpf, :date_born, :email, :name, :owner, :phone_cel, :phone_comercial, :phone_residential, :reference, :rg
end
