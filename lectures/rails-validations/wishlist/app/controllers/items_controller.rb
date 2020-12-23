class ItemsController < ApplicationController

    def new
        @item = Item.new
        @lists = List.all
    end

    def create
        binding.pry
    end

end
