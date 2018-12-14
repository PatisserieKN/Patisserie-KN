# == Schema Information
#
# Table name: users
#
#  id                     :bigint(8)        not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  admin                  :boolean          default(FALSE)
#  confirmation_token     :string
#  confirmed_at           :datetime
#  confirmation_sent_at   :datetime
#  provider               :string
#  uid                    :string
#

require 'rails_helper'

RSpec.describe User, type: :model do
  it { is_expected.to have_one(:profile) }
  it { is_expected.to have_one(:cart) }
  it { is_expected.to have_many(:items) }

  it 'is creatable' do
    expect{ create(:user) }.to change(User, :count).by(1)
  end
end
