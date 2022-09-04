class PlantsController < ApplicationController

    def index
        render json: Plant.all
    end

    def show
        plant = Plant.find_by!(id: params[:id])
        render json: plant
    end

    def create
        plant = Plant.create(name: params[:name], image: params[:image], price: params[:price])
        # if plant
        #     render json: plant
        # else
        #     render json: { error: 'Could not create' }, status 422
        # end
        render json: plant
    end
end
