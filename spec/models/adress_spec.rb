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
#

require 'rails_helper'

RSpec.describe Adress, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
