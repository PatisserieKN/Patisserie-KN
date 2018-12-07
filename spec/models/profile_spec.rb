require 'rails_helper'

RSpec.describe Profile, type: :model do
  it { is_expected. to validate_presence_of(:first_name)}
  it { is_expected. to validate_length_of(:first_name).
  					   is_at_least(2).is_at_most(100)}

  it { is_expected. to validate_presence_of(:last_name)}
  it { is_expected. to validate_length_of(:last_name).
  					   is_at_least(2).is_at_most(100)}

  it { is_expected. to validate_presence_of(:phone_number)}
  
  it { is_expected.to belong_to(:user)}

end
