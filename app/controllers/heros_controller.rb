class HerosController < ApplicationController
    def index
        hero= Hero.all
        render json: hero
    end

    def show
        hero= Hero.find(params[:id])
        if hero
            render json: hero, status: :ok
        else
            render json: "Hero not found", status: :not_found
        end
end
