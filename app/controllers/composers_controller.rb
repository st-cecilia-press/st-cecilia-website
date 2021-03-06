class ComposersController < ApplicationController
  def index
    @composers = Composer.all.order(:name)
  end

  def show
    name = params[:name].tr('_',' ')
    @composer = Composer.find_by(name: name)
  end
end
