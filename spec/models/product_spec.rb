require 'rails_helper'

RSpec.describe Product, type: :model do

  let(:product) { build(:ramdom_product) }

  it 'should be valid' do
    expect(product.valid?).to be true
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


  context "Associations" do
    it { is_expected.to belong_to(:cart)}
  end
end
