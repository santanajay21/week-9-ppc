class PartySupply < ApplicationRecord
    belongs_to :supply
    belongs_to :party
end
