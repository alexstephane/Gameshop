class ConsoleTypesController < ApplicationController
  
  def index
    @console_types = ConsoleType.all
  end

  def show
    @console_type = ConsoleType.find(params[:id])
  end

end
