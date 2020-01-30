require 'amixer2019'

class AnnouncementsController < ApplicationController
  def create
    amixer = AMixer2019.new
    amixer.fade '0%'
    system('./../annc.sh')
    amixer.fade '60%'
  end
end
