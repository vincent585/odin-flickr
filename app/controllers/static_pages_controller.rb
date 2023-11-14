class StaticPagesController < ApplicationController
  require 'flickr'

  def index
    flickr = Flickr.new
    if !params[:user_id].nil?
      @photos = flickr.people.getPhotos(user_id: params[:user_id])
    else
      @photos = flickr.photos.getRecent
    end

  end
end
