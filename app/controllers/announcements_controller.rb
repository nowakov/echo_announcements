class AnnouncementsController < ApplicationController
  def create
    system('sudo sh /home/pi/echo/annc.sh')
  end
end
