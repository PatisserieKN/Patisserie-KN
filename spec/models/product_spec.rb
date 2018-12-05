require 'rails_helper'

RSpec.describe Product, type: :model do

  let(:product) { build(:product) }

  it 'should be valid' do
    expect(product.valid?).to be true
  end

  context 'name' do
    it 'should be present' do
      product.name = ' ' * 6
      expect(product.valid?).to be false
    end

    it 'should not be too long' do
      product.name = 'a' * 64
      expect(product.valid?).to be false
    end

    it 'should not be too short' do
      product.name = 'a' * 2
      expect(product.valid?).to be false
    end
  end

  context 'description' do
    it 'should be present' do
      product.description = ' ' * 6
      expect(product.valid?).to be false
    end

    it 'should not be too long' do
      product.description = 'a' * 1024
      expect(product.valid?).to be false
    end

    it 'should not be too short' do
      product.description = 'a' * 2
      expect(product.valid?).to be false
    end
  end

  context 'price' do
    it 'should be present' do
      product.price = ' '
      expect(product.valid?).to be false
    end
  end
end
