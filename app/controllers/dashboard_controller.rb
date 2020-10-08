class DashboardController < ApplicationController
  layout "dashboard"
  
  def panel
    @lighitem = Lightitem.all
    @solaritem = Solaritem.all
    @cctvitem = Cctvitem.all
  end
end
