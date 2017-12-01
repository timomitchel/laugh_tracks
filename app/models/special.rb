require_relative 'comedian'

class Special < ActiveRecord::Base

    belongs_to :comedian
    
    def self.comedians
      if Comedian.id == Special.comedian_id
        Comedian.name
      end
    end

end
