class Api::V1::GamesController < ApplicationController

    def index
        games = Game.all

        render json: games
    end

    def show
        game = Game.find(params[:id])

        render json: game
    end

    def create
        game = Game.new(title: params[:title], released_date: params[:released_date], gameId: params[:gameId], image: params[:image])
        game.valid?
        game.save

        render json: game
    end
end
