class AnnouncementsController < ApplicationController
  def create
    system('sh /home/pi/echo/start-0.sh')
  end
end
