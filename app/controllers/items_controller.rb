class ItemsController < ApplicationController
    def index
        items = Item.all
        #render json: ItemSerializer.new(items)
        render json: items.to_json(except: [:created_at, :updated_at, :category_id], include: :category)
###keep only name
     #serializer^
     #active model serializer
     #fastJsonAPI
    end

    def create
        item = Item.new(item_params)
        item.category = Category.find_or_create_by(name: params[:category])
        item.save 

        render json: item.to_json(except: [:created_at, :updated_at])
        
    end
        

    def show
        item = Item.find(params[:id])
        render json: items.to_json(except: [:created_at, :updated_at], include: :category)
    end

    private

    def item_params
        params.require(:item).permit(:name, :price, :description)
    end
end
