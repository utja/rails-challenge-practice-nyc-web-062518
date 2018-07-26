class Company < ApplicationRecord
  has_many :offices
  has_many :buildings, through: :offices
  has_many :employees


  #if we have floor and building_id
  #we can make a new office
  def make_new_office()

end
