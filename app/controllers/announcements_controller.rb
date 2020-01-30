require 'amixer2019'

class AnnouncementsController < ApplicationController
  def create
    amixer = AMixer2019.new

    60.downto(10) do |i|
      amixer.volume = "#{i}%"
      sleep 0.02
    end

    system('./../annc.sh')

    10.upto(60) do |i|
      amixer.volume = "#{i}%"
      sleep 0.02
    end
  end
end
