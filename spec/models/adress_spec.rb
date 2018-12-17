# == Schema Information
#
# Table name: adresses
#
#  id                          :bigint(8)        not null, primary key
#  street_number               :integer
#  route                       :text
#  locality                    :string
#  administrative_area_level_1 :string
#  country                     :string
#  postal_code                 :integer
#  created_at                  :datetime         not null
#  updated_at                  :datetime         not null
#  user_id                     :bigint(8)
#  full_address                :text
#

require 'rails_helper'

RSpec.describe Adress, type: :model do
  it { is_expected.to belong_to(:user) }
  it { is_expected.to validate_presence_of(:street_number) }
  it { is_expected.to validate_presence_of(:route) }
  it { is_expected.to validate_presence_of(:locality) }
  it { is_expected.to validate_presence_of(:administrative_area_level_1) }
  it { is_expected.to validate_presence_of(:country) }
  it { is_expected.to validate_presence_of(:postal_code) }
  it { is_expected.to validate_presence_of(:full_address) }

  it 'is creatable' do
    expect{ create(:adress) }.to change(Adress, :count).by(1)
  end
end
