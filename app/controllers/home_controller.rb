class HomeController < ApplicationController
  def index
    @lighitem = Lightitem.all

  end

  def about
  end

  def contact
  end
end
