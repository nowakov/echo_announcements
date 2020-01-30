class AnnouncementsController < ApplicationController
  def create
    system('./../annc.sh')
  end
end
