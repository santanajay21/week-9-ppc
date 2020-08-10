class Party < ApplicationRecord
    belongs_to :category
    belongs_to :user
    has_many :parties_supplies
    has_many :supplies, through: :parties_supplies

    accepts_nested_attributes_for :parties_supplies, :reject_if => proc { |attributes| attributes['supply_id'].blank? || attributes['quantity'].blank?   }

    scope :order_by_date, -> {order(:date)}
end
