# == Schema Information
#
# Table name: profiles
#
#  id           :bigint(8)        not null, primary key
#  first_name   :string
#  last_name    :string
#  phone_number :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  user_id      :bigint(8)
#

require 'rails_helper'

RSpec.describe Profile, type: :model do
  it { is_expected. to validate_presence_of(:first_name) }
  it {
    is_expected. to validate_length_of(:first_name).
      is_at_least(2).is_at_most(100)
  }

  it { is_expected. to validate_presence_of(:last_name) }
  it {
    is_expected. to validate_length_of(:last_name).
      is_at_least(2).is_at_most(100)
  }

  it { is_expected. to validate_presence_of(:phone_number) }

  it { is_expected.to belong_to(:user) }

  let(:profile) { create(:profile) }
  it 'is creatable' do
    expect{ create(:profile) }.to change(Profile, :count).by(1)
  end
end
