require 'amixer2019'

class AnnouncementsController < ApplicationController
  def create
    amixer = AMixer2019.new

    30.downto(5) do |i|
      amixer.volume = "#{i*2}%"
      sleep 0.2
    end

    system('./../annc.sh')

    5.upto(30) do |i|
      amixer.volume = "#{i*2}%"
      sleep 0.2
    end
  end
end
