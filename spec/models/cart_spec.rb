require 'rails_helper'

RSpec.describe Cart, type: :model do

  it { is_expected.to have_many(:products) }

  let(:cart) { create(:cart) }
  it 'is creatable' do
    expect{ cart }.to change(Cart, :count).by(1)
  end

end
