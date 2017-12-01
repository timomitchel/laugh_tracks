require_relative 'special'



class Comedian < ActiveRecord::Base
  has_many :specials
   
  def self.comedian_average_age
    average(:age).round(2)
  end

  def self.specials
    Special.find_by(params[:comedian_id])
  end
end
