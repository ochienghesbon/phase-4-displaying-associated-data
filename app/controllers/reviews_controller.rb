class ReviewsController < ApplicationController

  def index
    reviews = Review.all.order(rating: :desc)
    render json: reviews, include: :dog_house
  end
  def show
    dog_house = DogHouse.find(params[:id])
    render json: dog_house, include: :reviews
  end

end
