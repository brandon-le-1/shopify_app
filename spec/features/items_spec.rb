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
        
        visit '/items/new' 
        
        fill_in 'Item Name:', with: 'Apple'
        fill_in 'Quantity:', with: 25
        fill_in 'Description:', with: 'Red, juicy fruit'
        fill_in 'Price:', with: 3.13
        click_button 'Submit'
        
        expect(current_path).to eq('/items/new')
        expect(page).to have_content('Success, Apple added to inventory.')
        
        visit '/items'
        
        expect(page).to have_content('Apple') 
        expect(page).to have_content('Banana') 
    end

    it "deletes inventory properly" do
        item = Item.create(name: 'Banana', quantity: 2, description: 'Yellow fruit that must be peeled before eaten.', price: 2.15)
        
        visit "items/#{item.id}"
        
        expect(page).to have_content('Banana') 
        click_button 'Delete'
        
        expect(current_path).to eq('/items')
        expect(page).to have_content('Success, Banana deleted.')
        within('.items') { expect(page).not_to have_content('Banana') }
    end

    it "edits inventory properly" do
        item = Item.create(name: 'Banana', quantity: 2, description: 'Yellow fruit that must be peeled before eaten.', price: 2.15)
        
        visit "items/#{item.id}/edit"
        
        expect(page).to have_content('Banana') 
        fill_in 'Quantity:', with: 12
        click_button 'Submit Change'
        
        expect(current_path).to eq('/items')
        within('.items') { expect(page).to have_content('12') }
    end
end
