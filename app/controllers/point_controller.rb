class PointController < ApplicationController
  def index
  end
  
  def new
    if Point.count > 9
      Point.destroy_all
    end
    p = Point.new
    p.lat = 10
    p.lng = 20
    p.save!
    redirect_to :action => :list
  end
  
  def list
    @count = Point.count
  end
end
