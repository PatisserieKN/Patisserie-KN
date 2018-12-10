require 'rails_helper'

RSpec.describe "static_pages/index.html.erb", type: :view do
  it 'display the given text' do
    render plain: "Patisserie KN"
    expect(rendered).to match /Patisserie KN/
  end
end
