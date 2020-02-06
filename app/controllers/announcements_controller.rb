class AnnouncementsController < ApplicationController
  def create
    50.times do
      `/usr/bin/amixer -q set Master 1%-`
      sleep 0.05
    end

    `/usr/bin/omxplayer -o local /home/pi/echo/start-#{params[:start]}.mp3`

    50.times do
      `/usr/bin/amixer -q set Master 1%+`
      sleep 0.05
    end

    redirect_to root_path
  end
end
