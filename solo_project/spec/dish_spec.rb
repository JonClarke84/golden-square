require 'dish'

RSpec.describe Dish do
  context 'given a name and a price' do
    
    it 'returns the name' do
      dish = Dish.new("Chicken Tikka", 7.49)
      expect(dish.name).to eq "Chicken Tikka"
    end
    
    it 'returns the price' do
      dish = Dish.new("Chicken Tikka", 7.49)
      expect(dish.price).to eq 7.49
    end
    
    it 'returns the formatted name and price' do
      dish = Dish.new("Chicken Tikka", 7.49)
      expect(dish.display).to eq "Chicken Tikka: £7.49"
    end
  end
end
