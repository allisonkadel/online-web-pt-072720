class ListController < ApplicationController
  def index # controller action => "index action for the lists controller"
    # this will implicitly render the index erb file in the views/list directory
    # if we want to explicitly render a view....
    # render "some_other_view"
  end

end
