class Party < ApplicationRecord
    belongs_to :category
    has_many :party_supplies
    has_many :supplies, through: :party_supplies

    def private?
        self.private ? 'Private' : 'Public'
    end    

end
