class SearchesController < ApplicationController
  def index
    search = params[:search]
    @instagram = Instagram.user_search(search, {:count => 1})
  end
end
