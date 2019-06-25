class Rider < ApplicationRecord

    has_many :rider_rollercoasters
    has_many :rollercoasters, through: :rider_rollercoasters

    validates :name, presence: true

    def rollercoaster_id=(ids)
        ids.each do |id|
            rollercoaster = Rollercoaster.find(id)
            self.rollercoasters << rollercoaster
        end
    end

    def rollercoaster_ids
        self.rollercoasters ? self.rollercoasters.map {|rollercoaster| rollercoaster.id} : nil
    end
    
end
