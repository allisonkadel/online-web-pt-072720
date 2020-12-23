class ItemsController < ApplicationController

    def new
        # when we hit this action from /items/new, there is no :list_id in the params hash
        # when we hit this action from /lists/1/items/new, there is a :list_id in the params hash
        if params[:list_id]
            @list = List.find(params[:list_id])
            render :list_item
        else
            @item = Item.new
            @lists = List.all
            render :new
        end
    end

    def create
        raise params.inspect
    end

end
