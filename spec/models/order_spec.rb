# == Schema Information
#
# Table name: orders
#
#  id           :bigint(8)        not null, primary key
#  user_id      :bigint(8)
#  paid         :boolean          default(FALSE)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  global_price :decimal(, )
#

require 'rails_helper'

RSpec.describe Order, type: :model do
  it { is_expected.to belong_to(:user) }
  it { is_expected.to have_many(:items) }

  let(:order) { create(:order) }
  it 'is creatable' do
    expect{ order }.to change(Order, :count).by(1)
  end
end
