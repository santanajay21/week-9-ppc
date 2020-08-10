class CategoriesController < ApplicationController

    def new
        @category = Category.new
    end

    def index
        @categories = Category.order_by_party_count
    end

    def show
        @category = Category.find(params[:id])
    end

    def create
        @category = Category.new(category_params)
        if @category.save
            redirect_to category_path(@category)
        else
            render :new
        end
    end

    private

    def category_params
        params.require(:category).permit(:name)
    end
end
