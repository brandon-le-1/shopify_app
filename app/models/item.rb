class Item < ApplicationRecord
    validates :name, presence: true
    validates :quantity, presence: true
    validates :price, presence: true
    validates :description, length: { maximum: 150}
end
