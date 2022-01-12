class Item < ApplicationRecord
    validates :name, presence: true
    validates :quantity, presence: true
    validates :price, presence: true
    validates :description, length: { maximum: 150,
    error_message: "150 characters is the limit for item description. Please try again." }
end
