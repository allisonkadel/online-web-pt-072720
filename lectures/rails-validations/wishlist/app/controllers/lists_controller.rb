class ListsController < ApplicationController

    def new
        @list = List.new
        3.times { @list.items.build }
    end

    def create
        List.create(list_params)
    end

    private

    def list_params
        params.require(:list).permit(:name, :items_attributes => [:name, :priority])
    end

end
