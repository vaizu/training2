class HomesController < ApplicationController
  def top
    @infos = Info.order('id DESC').limit(3)
  end
end
