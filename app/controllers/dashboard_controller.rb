class DashboardController < ApplicationController
  def index
    @recipes_all = Recipe.all
  end

end
