class HomeController < ApplicationController
  def index
    @empresa = Empresa.all
  end

end
