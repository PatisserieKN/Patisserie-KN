# == Schema Information
#
# Table name: carts
#
#  id         :bigint(8)        not null, primary key
#  paid       :boolean          default(FALSE)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Cart, type: :model do

  it { is_expected.to have_many(:products) }

  let(:cart) { create(:cart) }
  it 'is creatable' do
    expect{ cart }.to change(Cart, :count).by(1)
  end

end
