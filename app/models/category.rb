class Category < ApplicationRecord
    has_many :parties

    scope :order_by_party_count, -> {select("categories.name, categories.id, COUNT(parties.id) as num_of_parties").left_joins(:parties).group("categories.id").order("num_of_parties desc")}
end
