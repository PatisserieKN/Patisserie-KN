require 'rails_helper'

RSpec.describe Cart, type: :model do

  let(:cart) { build(:cart) }

  it 'should be valid' do
    expect(cart.valid?).to be true
  end

  context 'paid' do
    it 'should not be nil' do
      cart.paid = nil
      expect(cart.valid?).to be false
    end
  end
end
