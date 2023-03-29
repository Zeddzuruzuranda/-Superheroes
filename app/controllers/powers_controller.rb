class PowersController < ApplicationController
    def index
        power = Power.all
        render json: power
    end
    
    def show
        power = Power.find_by(params[:id])
        if power
            render json: power, status: :ok
        else
            render json: {error: 'power not found'}, status: :not_found
        end
    end


        def update
            power = Power.find_by(params[:id])
            if power
                power.update(power_params)
                render json: power, status: :ok
            else
                render json: {error: 'power not updated'}
            end
        end


        private
        def power_params
            params.permit (:name, :description)
        end

end
