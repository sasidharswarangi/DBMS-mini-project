class PagesController < ApplicationController
  def dashboard
    @docks = Dock.all.group_by(&:size)
  end
end
