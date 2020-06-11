class TravelService
  def self.get_places
    response = HTTParty.get('https://travel-api-rails.herokuapp.com/')
  end
# https://travel-api-rails.herokuapp.com/api/v1/reviews
  def self.get_place(id)
    response =  HTTParty.get("https://travel-api-rails.herokuapp.com/api/v1/reviews/#{id}")
  end
end