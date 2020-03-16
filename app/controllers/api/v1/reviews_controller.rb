class Api::V1::ReviewsController < ApplicationController

    def index
        reviews = Review.all

        render json: reviews
    end

    def show
        review = Review.find(params[:id])

        render json: review
    end

    def create

        review = Review.new(content: params[:content], user_id: params[:user_id], game_id: params[:game_id])
        review.valid?
        review.save

        render json: review
    end
end
