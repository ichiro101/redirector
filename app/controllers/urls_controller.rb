class UrlsController < ApplicationController

  # for simplicity we are going to have view page and
  # the form to create a new shortened url on the same action
  def index
    @urls = Url.all

    @url = Url.new
  end

  def create
    @url = Url.new(params[:url])

    if @url.save
      redirect_to urls_path
    else
      render :index
    end
  end

  def destroy
    @url = Url.find(params[:id])
    @url.destroy

    redirect_to urls_path
  end

  # This is called to do the actual redirection
  def redirect
    @url = Url.where(:short_url => params[:short_url]).first
    redirect_to @url.url
  end

end
