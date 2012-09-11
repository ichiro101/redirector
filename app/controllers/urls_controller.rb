class UrlsController < ApplicationController

  def index
    @url = Url.all
  end

  def new
    @url = Url.new
  end

  def create
    @url = Url.new

    @url.url = params[:url]
  end

end
