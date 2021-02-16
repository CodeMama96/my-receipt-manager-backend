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

    def show
        item = Item.find(params[:id])
    end
end
