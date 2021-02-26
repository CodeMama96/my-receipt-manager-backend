class ItemsController < ApplicationController
    def index
        items = Item.all
        render json: items.to_json(except: [:created_at, :updated_at, :category_id], include: :category)
    end

    def create
        item = Item.new(item_params)
        item.category = Category.find_or_create_by(name: params[:category])

        if item.save 
            render json: item.to_json(except: [:created_at, :updated_at], include: :category)
        else 
            render json: {error: "No Transaction Entered."}
        end
    end
        

    def show
        item = Item.find(params[:id])
        render json: items.to_json(except: [:created_at, :updated_at], include: :category)
    end

    private

    def item_params
        params.require(:item).permit(:name, :price)
    end
end
