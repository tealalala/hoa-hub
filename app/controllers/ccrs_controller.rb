class CcrsController < ApplicationController
  def index
    @ccrs = Ccr.all
    render 'index.html.erb'
  end
end
