require 'rails_helper'

RSpec.describe Item, type: :model do
  it 'exists' do
    item = Item.new(name: 'Banana', quantity: 2, description: 'Yellow fruit that must be peeled before eaten.', price: 2.15)

    expect(item).to be_an_instance_of(Item)
  end

  it "has a name, quantity, description, and price" do 
    item = Item.new(name: 'Banana', quantity: 2, description: 'Yellow fruit that must be peeled before eaten.', price: 2.15)
    description = 'Yellow fruit that must be peeled before eaten.'
    
    expect(item.name).to eq('Banana')
    expect(item.quantity).to eq(2)
    expect(item.description).to eq(description)
    expect(item.price). to eq(2.15)
  end

  describe "validations" do
    it { should validate_presence_of :name }
    it { should validate_presence_of :quantity }
    it { should validate_length_of(:description).is_at_most(150) }
    it { should validate_presence_of :price }
  end
end
