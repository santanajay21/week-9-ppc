class PartiesController < ApplicationController
    def index
        @parties = Party.all
    end

    def show
        @party = Party.find(params[:id])

    end

    def new
        @party = Party.new
        5.times {@party.parties_supplies.build}
    end

    def create
        @party = current_user.parties.new(party_params)
        if @party.save
            redirect_to party_path(@party)
        else
            render :new
        end
    end

    private

    def party_params
        params.require(:party).permit(:name, :category_id, :budget, :date, parties_supplies_attributes: [:quantity, :supply_id])
    end
end
