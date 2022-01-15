class Item < ApplicationRecord
    validates :name, presence: true
    validates :quantity, presence: true
    validates :price, presence: true
    validates :description, length: { maximum: 150}

    def self.to_csv
        column_names = %w(Name, Quantity, Description, Price)
        CSV.generate(headers:true) do |csv|
            csv << column_names
            all.each do |item|
                csv << item.attributes.values_at("name", "quantity", "description", "price")
            end
        end
    end
end
