class Building < ApplicationRecord
  has_many :offices
  has_many :companies, through: :offices

  def available_floors
    #instance
    @building.number_of_floors = 8
    array_of_all_floors = []#make an array of all available floors [1..8]
    floors_occupied = @building.offices.map do |office|
      #get each floor that is occupied
      office.floor
      # [1,5]
    end

    array_of_all_floors - floors_occupied = [2,3,4,6,7,8]






  end

end
