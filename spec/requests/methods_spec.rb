require 'rails_helper'

RSpec.describe "Items", type: :feature do
    it "can see all items currently in inventory and their attirbutes" do
        item_1 = Item.create(name: 'Banana', quantity: 2, description: 'Yellow fruit that must be peeled before eaten.', price: 2.15)
        item_2 = Item.create(name: 'Pineapple', quantity: 3, description: 'Sweet spiky fruit. Be careful!', price: 5.26)
    
        visit "/items"
    
        expect(page).to have_content(item_1.name)  
        expect(page).to have_content(item_1.quantity)
        expect(page).to have_content(item_1.description)
        expect(page).to have_content(item_1.price)  
        
        expect(page).to have_content(item_2.name)  
        expect(page).to have_content(item_2.quantity)
        expect(page).to have_content(item_2.description)
        expect(page).to have_content(item_2.price)     
    end

    it "adds an item to the inventory" do
        item = Item.create(name: 'Banana', quantity: 2, description: 'Yellow fruit that must be peeled before eaten.', price: 2.15)

        expect(Item.where(name: 'Banana', quantity: 2, description: 'Yellow fruit that must be peeled before eaten.', price: 2.15 )).to exist
    end

    it "deletes inventory properly" do
        item = Item.create(name: 'Banana', quantity: 2, description: 'Yellow fruit that must be peeled before eaten.', price: 2.15)

        expect(Item.where(name: 'Banana', quantity: 2, description: 'Yellow fruit that must be peeled before eaten.', price: 2.15 )).to exist

        item.destroy

        expect(Item.where(name: 'Banana', quantity: 2, description: 'Yellow fruit that must be peeled before eaten.', price: 2.15 )).not_to exist

    end

    it "edits inventory properly" do
        item = Item.create(name: 'Banana', quantity: 2, description: 'Yellow fruit that must be peeled before eaten.', price: 2.15)

        expect(Item.where(name: 'Banana', quantity: 2, description: 'Yellow fruit that must be peeled before eaten.', price: 2.15 )).to exist

        item.update(name: 'Banana', quantity: 5, description: 'Yellow fruit that must be peeled before eaten.', price: 2.15)

        expect(Item.where(name: 'Banana', quantity: 2, description: 'Yellow fruit that must be peeled before eaten.', price: 2.15 )).not_to exist
        expect(Item.where(name: 'Banana', quantity: 5, description: 'Yellow fruit that must be peeled before eaten.', price: 2.15 )).to exist
    end
end
