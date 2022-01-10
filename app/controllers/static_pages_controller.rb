class StaticPagesController < ApplicationController
  def index
    user_photos if params[:uid]
  end

  private

  def user_photos
    begin
      @photos = Flickr.new
                      .people
                      .getPhotos api_key: ENV['API_KEY'],
                                user_id: params[:uid]
    rescue Flickr::FailedResponse
      @photo = []
      flash.now[:error] = 'Failed to find user'
    end
  end
end
