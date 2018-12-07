# == Schema Information
#
# Table name: products
#
#  id          :bigint(8)        not null, primary key
#  name        :string
#  description :text
#  price       :decimal(, )
#  category    :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  cart_id     :bigint(8)
#

require 'rails_helper'

RSpec.describe Product, type: :model do
  it { is_expected.to belong_to(:cart) }
  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_presence_of(:description) }
  it { is_expected.to validate_presence_of(:price) }
  it { is_expected.to validate_presence_of(:category) }

  it { is_expected.to validate_length_of(:name).
                      is_at_least(3).is_at_most(63) }

  it { is_expected.to validate_length_of(:description).
                      is_at_least(3).is_at_most(1023) }

  it { is_expected.to validate_length_of(:category).
                      is_at_least(3).is_at_most(63) }

  let(:product) { create(:product) }
  it 'is creatable' do
    expect{ product }.to change(Product, :count).by(1)
  end
end
