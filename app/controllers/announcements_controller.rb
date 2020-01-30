class AnnouncementsController < ApplicationController
  def create
    system('sh /home/pi/echo/annc.sh')
  end
end
