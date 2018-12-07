require 'rails_helper'

RSpec.describe Product, type: :model do

  let(:product) { build(:ramdom_product) }

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

  context 'category' do
    it 'should be present' do
      product.category = ' ' * 6
      expect(product.valid?).to be false
    end

    it 'should not be too long' do
      product.category = 'a' * 64
      expect(product.valid?).to be false
    end

    it 'should not be too short' do
      product.category = 'a' * 2
      expect(product.valid?).to be false
    end
  end

  # Shoulda matchers tests
  context 'validation tests' do
    it { is_expected.to validate_presence_of(:name)}
    it { is_expected.to validate_presence_of(:description)}
    it { is_expected.to validate_presence_of(:price)}
    it { is_expected.to validate_presence_of(:category)}

    it { is_expected.to validate_length_of(:name).
                        is_at_least(3).is_at_most(63)}

    it { is_expected.to validate_length_of(:description).
                        is_at_least(3).is_at_most(1023)}

    it { is_expected.to validate_length_of(:category).
                        is_at_least(3).is_at_most(63)}
  end



end
