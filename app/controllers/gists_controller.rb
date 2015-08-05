class GistsController < ApplicationController
  def new
    @gist = Gist.new
  end

  def create
    @gist = GithubWrapper.new.create_gist(params[:gist][:content])
    redirect_to :back
  end

  def index
    @gists = GithubWrapper.all
  end
end
