class HeroPowersController < ApplicationController
    def index
        hero_power =HeroPower.all
        render json: hero_power
    end

    def create
        hero_power = HeroPower.create(hero_power_params)
        if hero_power
            render json: hero_power, status: :created
        else
            render json:{error: "heropower not created successfully"}
        end


        private

        def hero_power_params
            params.permit(:strength, :power_id, :hero_id)
        end
end
