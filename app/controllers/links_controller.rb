class LinksController < ApplicationController
  def index

    @links = Links.all
  end
end
