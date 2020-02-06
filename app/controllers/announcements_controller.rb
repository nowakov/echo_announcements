require 'amixer2019'

class AnnouncementsController < ApplicationController
  def create
    50.times do
      `/usr/bin/amixer -q set Master 1%-`
      sleep 0.01
    end

    `/usr/bin/omxplayer -o local /home/pi/echo/start-0.mp3`

    50.times do
      `/usr/bin/amixer -q set Master 1%+`
      sleep 0.01
    end
  end
end
