class SuppliesController < ApplicationController

    def new
        @supply = Supply.new
    end

    def show
        @supply = Supply.find(params[:id])
    end

    def index
        @supplies = Supply.all
    end

    def create
        @supply = Supply.new(supply_params)
        if @supply.save
            redirect_to supply_path(@supply)
        else
            render :new
        end
    end

    private

    def supply_params
        params.require(:supply).permit(:name, :tot_quantity)
    end
end
