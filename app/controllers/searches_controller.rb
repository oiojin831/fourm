class SearchesController < ApplicationController
  def index
    search = params[:search]
    user = Instagram.user_search(search, {count: 1})
    user_id = user[0].id
    @instagram = Instagram.user_recent_media(user_id, {count: 10})
  end
end
