require 'rails_helper'

describe TravelService, :vcr => true do
  it 'will make an api call' do
    response = TravelService.get_place
    expect(response.code). to eq(200)
  end
end