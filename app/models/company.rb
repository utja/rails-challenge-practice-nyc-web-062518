class Company < ApplicationRecord
  has_many :offices
  has_many :buildings, through: :offices
  has_many :employees
end
