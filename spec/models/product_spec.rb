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
#

require 'rails_helper'

RSpec.describe Product, type: :model do
  it { is_expected.to have_many(:items) }
  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_presence_of(:description) }
  it { is_expected.to validate_presence_of(:price) }
  it { is_expected.to validate_presence_of(:category) }

  it {
    is_expected.to validate_length_of(:name).
      is_at_least(3).
      with_short_message('minimum 3 caractères').
      is_at_most(63).
      with_long_message('maximum 63 caractères')
  }

  it {
    is_expected.to validate_length_of(:description).
      is_at_least(3).
      with_short_message('minimum 3 caractères').
      is_at_most(1023).
      with_long_message('maximum 1023 caractères')
  }

  it {
    is_expected.to validate_length_of(:category).
      is_at_least(3).
      with_short_message('minimum 3 caractères').
      is_at_most(63).
      with_long_message('maximum 63 caractères')
  }

  let(:product) { create(:product) }
  it 'is creatable' do
    expect{ product }.to change(Product, :count).by(1)
  end
end
