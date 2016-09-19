class GameInTownsController < ApplicationController
  def index
    $current_town ||= params[:town]
    if params[:town].present?
      $current_town.last == params[:town].first ? $current_town = params[:town] : $current_town
    end
  end
end
