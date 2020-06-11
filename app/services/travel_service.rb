class TravelService < ApplicationRecord
  # has_many :comments, dependent: :destroy

  def self.get_places
    response = HTTParty.get('https://travel-api-rails.herokuapp.com/')
  end
# https://travel-api-rails.herokuapp.com/api/v1/reviews
  def self.get_place(id)
    response =  HTTParty.get("https://travel-api-rails.herokuapp.com/api/v1/reviews/#{id}")
  end

  def self.post_place(params)
    author = params[:author]
    content = params[:content]
    place = params[:place]
    response = HTTParty.post('https://travel-api-rails.herokuapp.com/api/v1/reviews/', body: {author: author, content: content, place: place})
  end
  # def self.pagination_request(page)
  #   paginate :per_page => 10, :page => page
  # end


  
end