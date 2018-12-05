require 'rails_helper'

RSpec.describe Product, type: :model do

  before { @product = build(:product) }

  it 'should be valid' do
    expect(@product.valid?).to be true
  end

  context 'name' do
    it 'should be present' do
      @product.name = ' ' * 6
      expect(@product.valid?).to be false
    end

    it 'should not be too long' do
      @product.name = 'a' * 64
      expect(@product.valid?).to be false
    end

    it 'should not be too short' do
      @product.name = 'a' * 2
      expect(@product.valid?).to be false
    end
  end
end
