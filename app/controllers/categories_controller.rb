class CategoriesController < ApplicationController
    def index
       categories = Category.all
        #render json:CategorySerializer.new(items)
        render json:categories.to_json(except: [:created_at, :updated_at])

     #serializer^
     #active model serializer
     #fastJsonAPI
    end
end
